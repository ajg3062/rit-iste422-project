JAVAC=javac
sources = $(wildcard *.java)
classes = $(sources:.java=.class)

all : clean program test run

program : $(classes)

clean : 
	rm -f *.class
	find . -name \*.class -exec rm {} \;

test : %.class
	java -cp .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:build org.junit.runner.JUnitCore EdgeConnectorTest

run : %.class
	java -classpath build RunEdgeConvert

%.class : %.java
	$(JAVAC) -classpath .:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar -d build src/main/java/$< src/test/java/$<
