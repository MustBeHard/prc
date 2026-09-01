#include <stdio.h>
#include "unistd.h"
// unit sta 

int main()
{
pid_t pid = fork();
// 直接先生成一个进程，pid1

if(pid == -1){ //如果-1那说明生成失败
perror("FORK");
return 1;
}

if(pid==0){
// 表示新进程开辟成功，这时候分配id 
// 
printf("THIS IS fork process, PID:%d, by %d\n",getpid(),getppid());
}else{

printf("this is parent id:%d, fork : %d\n",getpid(), pid);
}

return 0;
}


