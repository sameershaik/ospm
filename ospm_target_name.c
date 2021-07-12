#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
	char buffer[100];
	int ret;
	int fd;
	
	fd = open("/etc/lsb-release", O_RDONLY);
	if (fd < 0) {
		printf("file not found\n");
		exit(0);
	}
	while ((ret = read(fd, buffer, sizeof(buffer))) > 0)
		printf("%s\n", buffer);
	return 0;
}
	
