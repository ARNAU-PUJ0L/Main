
import os
import re
import socket
import subprocess
from typing import List  
from libqtile import layout, bar, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen, Rule
from libqtile.command import lazy
from libqtile.widget import Spacer


#--------------Variables--------------

dispositivo_red="wlo1"
color_iconos_activos="#f6ff00"
color_iconos_inactivos="#f3f4f5"
color_grupo1="#ff7f00"
color_grupo2="#ff00c0"
color_grupo3="#07a0e7"
color_grupo4="#ff0f00"
color_actualizaciones="#FFC300"

tamaño_fuente=16
tamaño_icono=18

#-------------Funciones------------

def rectangulo(color,tipo):
    if tipo==0:
        icon=""    #izquierdo
    else:
        icon=""    #derecha
    
    return widget.TextBox(
        text=icon,
        fontsize=30,
        foreground=color,
        padding=-1

    )


def icono(icono, color_grupo):
    return widget.TextBox(
        text=icono,
        background=color_grupo,
        fontsize=tamaño_icono,
        padding=-1
    )

def separador():
    return widget.Sep(
        linewidth=0,
        padding=6
    )

#mod4 or mod = super key
mod = "mod4"
mod1 = "alt"
mod2 = "control"
home = os.path.expanduser('~')


@lazy.function
def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)

@lazy.function
def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)

keys = [

# Most of our keybindings are in sxhkd file - except these

#Control volumen
Key ([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%")),
Key ([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")),
Key ([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")),

#Brillo Pantalla
Key ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
Key ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),




# SUPER + FUNCTION KEYS

    Key([mod], "w", lazy.window.toggle_fullscreen()),
    Key([mod], "q", lazy.window.kill()),

# Mis shortcuts

	Key([mod], "r", lazy.spawn("rofi -show drun")),
	Key([mod], "f", lazy.spawn("firefox")),




# SUPER + SHIFT KEYS

    Key([mod, "shift"], "q", lazy.window.kill()),
    Key([mod, "shift"], "r", lazy.restart()),


# QTILE LAYOUT KEYS
    Key([mod], "n", lazy.layout.normalize()),
    Key([mod], "space", lazy.next_layout()),

# CHANGE FOCUS
    Key([mod], "Up", lazy.layout.up()),
    Key([mod], "Down", lazy.layout.down()),
    Key([mod], "Left", lazy.layout.left()),
    Key([mod], "Right", lazy.layout.right()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),


# RESIZE UP, DOWN, LEFT, RIGHT
    Key([mod, "control"], "l",
        lazy.layout.grow_right(),
        lazy.layout.grow(),
        lazy.layout.increase_ratio(),
        lazy.layout.delete(),
        ),
    Key([mod, "control"], "Right",
        lazy.layout.grow_right(),
        lazy.layout.grow(),
        lazy.layout.increase_ratio(),
        lazy.layout.delete(),
        ),
    Key([mod, "control"], "h",
        lazy.layout.grow_left(),
        lazy.layout.shrink(),
        lazy.layout.decrease_ratio(),
        lazy.layout.add(),
        ),
    Key([mod, "control"], "Left",
        lazy.layout.grow_left(),
        lazy.layout.shrink(),
        lazy.layout.decrease_ratio(),
        lazy.layout.add(),
        ),
    Key([mod, "control"], "k",
        lazy.layout.grow_up(),
        lazy.layout.grow(),
        lazy.layout.decrease_nmaster(),
        ),
    Key([mod, "control"], "Up",
        lazy.layout.grow_up(),
        lazy.layout.grow(),
        lazy.layout.decrease_nmaster(),
        ),
    Key([mod, "control"], "j",
        lazy.layout.grow_down(),
        lazy.layout.shrink(),
        lazy.layout.increase_nmaster(),
        ),
    Key([mod, "control"], "Down",
        lazy.layout.grow_down(),
        lazy.layout.shrink(),
        lazy.layout.increase_nmaster(),
        ),


# FLIP LAYOUT FOR MONADTALL/MONADWIDE
    Key([mod, "shift"], "f", lazy.layout.flip()),

# FLIP LAYOUT FOR BSP
    Key([mod, "mod1"], "k", lazy.layout.flip_up()),
    Key([mod, "mod1"], "j", lazy.layout.flip_down()),
    Key([mod, "mod1"], "l", lazy.layout.flip_right()),
    Key([mod, "mod1"], "h", lazy.layout.flip_left()),

# MOVE WINDOWS UP OR DOWN BSP LAYOUT
    Key([mod, "shift"], "k", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "h", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right()),

# MOVE WINDOWS UP OR DOWN MONADTALL/MONADWIDE LAYOUT
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up()),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "Left", lazy.layout.swap_left()),
    Key([mod, "shift"], "Right", lazy.layout.swap_right()),

# TOGGLE FLOATING LAYOUT
    Key([mod, "shift"], "space", lazy.window.toggle_floating()),

    ]

groups = []

# FOR QWERTY KEYBOARDS
group_names = ["1", "2", "3"]


#group_labels = ["1 ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 ", "8 ", "9 ", "0",]
group_labels = ["  ", "  ", "  "]
#group_labels = ["arch", "Navegador", "terminal",files, "phone"]

group_layouts = ["monadtall", "monadtall", "monadtall", "monadtall", "monadtall", "monadtall", "monadtall", "monadtall", "monadtall", "monadtall",]
#group_layouts = ["monadtall", "matrix", "monadtall", "bsp", "monadtall", "matrix", "monadtall", "bsp", "monadtall", "monadtall",]

for i in range(len(group_names)):
    groups.append(
        Group(
            name=group_names[i],
            layout=group_layouts[i].lower(),
            label=group_labels[i],
        ))

for i in groups:
    keys.extend([

#CHANGE WORKSPACES
        Key([mod], i.name, lazy.group[i.name].toscreen()),
        Key([mod], "Tab", lazy.screen.next_group()),
        Key([mod, "shift" ], "Tab", lazy.screen.prev_group()),
        Key(["mod1"], "Tab", lazy.screen.next_group()),
        Key(["mod1", "shift"], "Tab", lazy.screen.prev_group()),


# MOVE WINDOW TO SELECTED WORKSPACE 1-10 AND FOLLOW MOVED WINDOW TO WORKSPACE
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name) , lazy.group[i.name].toscreen()),
    ])


def init_layout_theme():
    return {"margin":5,
            "border_width":2,
            "border_focus": "#5e81ac",
            "border_normal": "#4c566a"
            }

layout_theme = init_layout_theme()


layouts = [
    layout.MonadTall(margin=8, border_width=2, border_focus="#5e81ac", border_normal="#4c566a"),
    layout.Max(**layout_theme)
]

# COLORS FOR THE BAR
#Theme name : ArcoLinux Default
def init_colors():
    return [["#2F343F", "#2F343F"], # color 0
            ["#2F343F", "#2F343F"], # color 1
            ["#c0c5ce", "#c0c5ce"], # color 2
            ["#fba922", "#fba922"], # color 3
            ["#3384d0", "#3384d0"], # color 4
            ["#f3f4f5", "#f3f4f5"], # color 5
            ["#cd1f3f", "#cd1f3f"], # color 6
            ["#62FF00", "#62FF00"], # color 7
            ["#6790eb", "#6790eb"], # color 8
            ["#f6ff00", "#f6ff00"]] # color 9


colors = init_colors()


# WIDGETS FOR THE BAR

def init_widgets_defaults():
    return dict(font="Noto Sans",
                fontsize = 12,
                padding = 2,
                background=colors[1])

widget_defaults = init_widgets_defaults()

def init_widgets_list():
    prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())
    widgets_list = [
               widget.GroupBox(font="FontAwesome",
                        center_aligned = True,
                        fontsize = tamaño_icono,
                        margin_y = 4,
                        margin_x = 0,
                        padding_y = 6,
                        padding_x = 5,
                        borderwidth = 0,
                        disable_drag = True,
                        inactive = color_iconos_inactivos,
                        rounded = False,
                        highlight_method = "block",
                        this_current_screen_border = "#b600ff",
                        foreground = colors[2],
                        background = colors[1]
                        ),

   

               widget.WindowName(font="Noto Sans",
                        fontsize = 12,
                        foreground = color_iconos_inactivos,
                        background = colors[1],
                        ),


               #----------------------------------------INICIO GRUPO 1---------------------------------
                rectangulo(color_grupo1, 0),
                


                
                icono(" ", color_grupo1),

                widget.Memory(
                    background=color_grupo1,
                ),
                
                icono("  ", color_grupo1),


                widget.HDDGraph(
                    background=color_grupo1,
                    border_color= "#000000",
                    fill_color=color_grupo4,
                    graph_color=color_grupo4,
                    fequency=60

                ),





                rectangulo(color_grupo1, 1),

                separador(),
               #--------------------------------------FIN GRUPO 1-----------------------------------------

               #-------------------------------------INICIO GRUPO 2---------------------------------------
                rectangulo(color_grupo2, 0),

                icono(" ", color_grupo2),

                widget.CheckUpdates(
                    background=color_grupo2,
                    no_update_string="0",
                    display_format= "Updates: {updates}",
                    updates_interval=1800,
                    distro="Arch_checkupdates"
                ),
                
                icono("  ", color_grupo2),

                widget.Net(
                    background=color_grupo2,
                    format="{down}   {up}",
                    interface=dispositivo_red,
                    use_bits="true"
                ),
                rectangulo(color_grupo2, 1),
                separador(),
               #------------------------------------FIN GRUPO 2--------------------------------------

               #-----------------------------------INICIO GRUPO 3------------------------------------
                rectangulo(color_grupo3, 0),

                widget.Clock(
                    background=color_grupo3,
                    format="%d/%m/%Y %A %H:%M "
                ),

                icono(" 奔 ", color_grupo3),

                widget.PulseVolume(
                    background=color_grupo3,
                    limit_max_volume=True,
                    fontsize=tamaño_fuente
                ),

               rectangulo(color_grupo3, 1),
               separador(),
               #------------------------------------Fin grupo 3---------------------------------------
               
               #-----------------------------------Inicio grupo 4-----------------------------------
               rectangulo(color_grupo4, 0),

               widget.CurrentLayout(
                   background=color_grupo4,
               ),
              rectangulo(color_grupo4, 1),
            #-------------------------------------Fin grupo 4 --------------------------------------------

               widget.Systray(
                        background=colors[1],
                        icon_size=tamaño_icono,
                        padding = 4
                        ),
              ]
    return widgets_list
    wallpaper="/usr/share/backgrounds/arcolinux/black-linux-wallpapers-4k-hd-black-linux-backgrounds-on-wallpaperbat.png"
    wallpaper_mode="fill"


widgets_list = init_widgets_list()


def init_widgets_screen1():
    widgets_screen1 = init_widgets_list()
    return widgets_screen1

def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2

widgets_screen1 = init_widgets_screen1()
widgets_screen2 = init_widgets_screen2()

#Stats Polybar
def init_screens():
   return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), size=26, opacity=0.8)),
            Screen(top=bar.Bar(widgets=init_widgets_screen2(), size=26, opacity=0.8))]
screens = init_screens()


# MOUSE CONFIGURATION
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size())
]

dgroups_key_binder = None
dgroups_app_rules = []

main = None

@hook.subscribe.startup_once
def start_once():
    home = os.path.expanduser('~')
    subprocess.call([home + '/.config/qtile/scripts/autostart.sh'])

@hook.subscribe.startup
def start_always():
    # Set the cursor to something sane in X
    subprocess.Popen(['xsetroot', '-cursor_name', 'left_ptr'])

@hook.subscribe.client_new
def set_floating(window):
    if (window.window.get_wm_transient_for()
            or window.window.get_wm_type() in floating_types):
        window.floating = True

floating_types = ["notification", "toolbar", "splash", "dialog"]


follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules, 
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
    Match(wm_class='Arcolinux-welcome-app.py'),
    Match(wm_class='Arcolinux-tweak-tool.py'),
    Match(wm_class='Arcolinux-calamares-tool.py'),
    Match(wm_class='confirm'),
    Match(wm_class='dialog'),
    Match(wm_class='download'),
    Match(wm_class='error'),
    Match(wm_class='file_progress'),
    Match(wm_class='notification'),
    Match(wm_class='splash'),
    Match(wm_class='toolbar'),
    Match(wm_class='Arandr'),
    Match(wm_class='feh'),
    Match(wm_class='Galculator'),
    Match(wm_class='arcolinux-logout'),
    Match(wm_class='xfce4-terminal'),

],  fullscreen_border_width = 0, border_width = 0)
auto_fullscreen = True

focus_on_window_activation = "focus" # or smart

wmname = "LG3D"
