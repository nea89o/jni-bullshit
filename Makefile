Test.o: Test.c Test.h b.h
	gcc -c Test.c -o Test.o
b.o: b.c b.h
	gcc -c b.c -o b.o
liba.so: Test.o libb.so
	gcc -shared -o liba.so Test.o libb.so
libb.so: b.o
	gcc -shared -o libb.so b.o

Test.h: Test.class
	javah Test
Test.class: Test.java
	javac Test.java

clean:
	rm *.o *.class Test.h

runJLP: Test.class liba.so
	java -Djava.library.path=. -classpath . Test
runLDP: Test.class liba.so
	LD_LIBRARY_PATH=. java -classpath . Test
