#include <stdio.h>
int uhhItDoesntMatter(int A){
    return ++A;


}
int main (void){
    FILE *f=fopen("mapCells.txt","r");
    char points[1000000];
    int c=0;
    char next_char;
    while (next_char=fscanf(f,"%c",&points[c])!=EOF){
            c++;
    }
    printf("%d\n stop reading here",c);



    int columns,len;
    len=c;
    columns=0;
    for (c=0;points[c]!='\n';c++){
        if (points[c]=='0'|| points[c]=='1')
            columns++;
    }






    for (c=0;c!=len;c++){
        if (c%2==0||(c+1)%(columns*2)==0){
            if (points[c]=='1')
                points[c]=uhhItDoesntMatter(points[c]);
            printf("%c",points[c]);
        }
    }


    return 0;
}
