install: ospm
	cp ospm /usr/bin/
ospm:
	$(CC) -o ospm ospm_target_name.c
.PHONY:
clean:
	rm -rf *~
	rm ospm
