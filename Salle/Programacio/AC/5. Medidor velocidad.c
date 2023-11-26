#include <stdio.h>




int calculatePoints(int current_speed, int max_speed, int min_speed) {
	int subtract_points = 0;

	if (current_speed > max_speed) {
		subtract_points = (current_speed - max_speed) / 10;
	} 
	 
	if (current_speed < min_speed) {
		subtract_points = (min_speed - current_speed) / 10;
	}

	return subtract_points;
}


int isIllegal(int max, int min, int actual){

    if (actual > max || actual < min) {
        return 1;
    } else {
        return 0;
    }

}





int main() {

    int current_speed = 0;
    int max_speed = 0;
    int min_speed = 0;
    int lost_points = 0;


	// Ask for the maximum speed limit
	printf("Introduce the maximum speed: ");
	scanf("%d", &max_speed);
	
	// Ask for the minimum speed limit
	printf("Introduce the minimum speed: ");
	scanf("%d", &min_speed);
	
	// Ask for the current speed
	printf("Introduce the current speed: ");
	scanf("%d", &current_speed);




	// Check the current speed
	if (isIllegal(max_speed, min_speed, current_speed) == 1 ) {
		
        lost_points = calculatePoints(current_speed, max_speed, min_speed);

		printf("You will receive a speeding ticket!\n");
		
        printf("You've lost %d points!\n", lost_points);
	
    } else {
	
    	printf("Keep driving safe!\n");
	}


	return 0;
}