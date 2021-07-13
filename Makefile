PREFIX:=/usr/local/
install: ospm
	chmod 777 ospm
	cp ospm $(DESTDIR)/$(PREFIX)
ospm:
	$(CC) -o ospm ospm_target_name.c
.PHONY:
clean:
	rm -rf *~
	rm ospm
