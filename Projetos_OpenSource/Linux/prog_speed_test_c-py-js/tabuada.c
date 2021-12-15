#include <stdio.h>
int main(){
	int i=1,j=1;
	printf("---------------\n");
	for (i=1;i<11;i++){
		printf("Tabuada do %d\n", i);
    printf("---------------\n");
		for (j=1;j<11;j++){
			printf("%d x %d = %d\n",i,j,i*j);
	  }
    printf("---------------\n");
	}
	return 0;
}

