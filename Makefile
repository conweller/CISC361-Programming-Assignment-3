shell: main.o get_path.o get_arg.o redirect.o my_pipe.o watch.o
	gcc -g main.o get_path.o get_arg.o redirect.o my_pipe.o watch.o -o shell -lpthread

main.o: main.c
	gcc -g -c main.c

get_path.o: get_path.c
	gcc -g -c get_path.c

get_arg.o: get_arg.c
	gcc -g -c get_arg.c

redirect.o: redirect.c
	gcc -g -c redirect.c

my_pipe.o: my_pipe.c
	gcc -g -c my_pipe.c

watch.o: watch.c
	gcc -g -c watch.c

clean:
	rm *.o shell
