#include <stdio.h>

void secretFunction()
{
    printf("\x1B[31mCongratulations!\x1B[0m\n");
    printf("\x1B[33mYou have entered in the secret function!\x1B[0m\n");
}

void echo()
{
    char buffer[20];
    printf("buffer: %p\n", buffer);
    printf("Enter some text:\n");
    scanf("%s", buffer);
    printf("You entered: %s\n", buffer);    
}

int main()
{
    echo();

    return 0;
}
