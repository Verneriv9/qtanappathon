//Darrel
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
typedef enum RESOURCES {
    WOOD = 1,
    SHEEP = 2,
    BRICK = 3,
    ROCK = 4,
    WHEAT = 5,};
int main (void){
    struct mapCell{
        int xcoord;
        int ycoord;
        int resourceValue;
        bool isPortCell;
        bool isCoastCell;
    };
    FILE *f1=fopen("mapCells.txt","r");
    FILE *f2=fopen("coastCells.txt","r");
    int i=0;
    int j=0;
    struct mapCell *ptr;
    int NUM_MAPCELLS=0;
    char parser;
    char charx[10],chary[10];
    while (fscanf(f1,"%c",&parser)!=EOF){
        if (parser=='\n')
            NUM_MAPCELLS++;
    }
    struct mapCell mapCells[NUM_MAPCELLS];
    rewind(f1);
    while (fscanf(f1,"%3[^,],%s\n",charx,chary)!=EOF){
        i++;
        mapCells[i].xcoord=atoi(charx);
        mapCells[i].ycoord=atoi(chary);
    }
    printf("youre good");
    int fileIdx = fscanf(f2,"%3[^,],%s\n",charx,chary);
    while (fileIdx != EOF){
        printf("%d",NUM_MAPCELLS);
        for (i=0;i!=NUM_MAPCELLS;i++){
                printf("mapCells exists\n");
            //printf("2");
            if (atoi(charx)==mapCells[i].xcoord&&atoi(chary)==mapCells[i].ycoord){
                mapCells[i].isCoastCell=true;
                fileIdx = fscanf(f2,"%3[^,],%s\n",charx,chary);
                printf("match\n");
            }
            printf("\n\n%d\n\n",(i));
        }
        //printf("miss good booty");
    }
    printf("youre good");
    return 0;
}
