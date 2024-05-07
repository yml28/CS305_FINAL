CC = g++

main.out: main

	./main | tee main.out

main: main.o get_student_id.o

	g++ main.o get_student_id.o -o main

main.o: main.c

	g++ -c -g main.c

get_student_id.o: get_student_id.c

	g++ -c -g get_student_id.c
