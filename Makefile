PREFIX:=/usr/local/
install: ospm
	cp ospm $(PREFIX)
ospm:
	$(CC) -o ospm ospm_target_name.c
.PHONY:
clean:
	rm -rf *~
	rm ospm
