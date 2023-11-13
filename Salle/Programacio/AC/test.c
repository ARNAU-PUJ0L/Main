#include <stdio.h>
#include <math.h>


int binomial(int x, int y){
    
    int fact_x, fact_y, result;
    
    fact_x = !(x);
    fact_y = !(y);
    
    result = (fact_x) / fact_y * !(x - y);
    
    return result;
}




int main () {
	int m, n;
	
	printf("To calculate the binomial coefficient of M over N:\n");
	printf("\tM: ");
	scanf("%d", &m);
	printf("\tN: ");
	scanf("%d", &n);

	printf("B(%d, %d) = %d\n", m, n, binomial(m, n));

	return 0;
}