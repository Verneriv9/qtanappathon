//Darrel
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
typedef enum RESOURCES {
    WOOD = 1,
    SHEEP = 2,
    BRICK = 3,
    ROCK = 4,
    WHEAT = 5,
};
int main (void){
    struct mapCell{
        int xcoord;
        int ycoord;
        int resourceValue;
        bool isPortCell;
        bool isCoastCell;
    };
    FILE *f1=fopen("mapCells.txt","r");
    FILE *f2=f1;
    int i=0;
    int newlines=0;
    char parser[50];
    char charx[10],chary[10];
    while (fscanf(f1,"%c",&parser)!=EOF){
        if (parser=='\n')
            newlines++;
        printf("a");
    }
    struct mapCell mapCells[newlines];
    rewind(f1);
    while (fscanf(f2,"%s,%s\n",charx,chary)!=EOF){
        i++;
        mapCells[i].xcoord=atoi(charx);
        mapCells[i].ycoord=atoi(chary);
        printf("%d,%d\n",mapCells[i].xcoord,mapCells[i].ycoord);
    }
    return 0;
}
