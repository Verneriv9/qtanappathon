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
    struct mapCell *ptr;
    int newlines=0;
    char parser;
    char charx[10],chary[10];
    while (fscanf(f1,"%c",&parser)!=EOF){
        if (parser=='\n')
            newlines++;
    }
    printf("look at this %d\n\n",newlines);
    struct mapCell mapCells[newlines];
    rewind(f1);
    while (fscanf(f1,"%3[^,],%s\n",charx,chary)!=EOF){
        i++;
        mapCells[i].xcoord=atoi(charx);
        mapCells[i].ycoord=atoi(chary);
        //printf("%d,%d\n",mapCells[i].xcoord,mapCells[i].ycoord);
    }
    printf("youre good");
    while (fscanf(f2,"%3[^,],%s\n",charx,chary)!=EOF){
        //printf("1");
        for (i=0;i!=sizeof(mapCells);i++){
            //printf("2");
            if (atoi(charx)==mapCells[i].xcoord&&atoi(chary)==mapCells[i].ycoord){
                //printf("3");
                mapCells[i].isCoastCell=true;
            }
        printf("\n\n%d\n\n",(i));
        }
        printf("miss good booty");
    }
    printf("youre good");
    for (i=0;i!=sizeof(mapCells);i++){
        if (mapCells[i].isCoastCell==true){
            printf("%d,%d\n",mapCells[i].xcoord,mapCells[i].ycoord);
        }
    }
    printf("youre good");
    return 0;
}
