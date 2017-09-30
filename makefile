all: madRace utAtom

madRace: mainMadRace.o
	g++ -o madRace mainMadRace.o -lgtest -lpthread
mainMadRace.o: mainMadRace.cpp madRace.h utMadRace.h
	g++ -std=c++11 -c mainMadRace.cpp

utAtom: mainAtom.o
	g++ -o utAtom mainAtom.o -lgtest -lpthread
mainAtom.o: mainAtom.cpp utAtom.h atom.h
	g++ -std=c++11 -c mainAtom.cpp

utVariable: mainVariable.o
		g++ -o utVariable mainVariable.o -lgtest -lpthread
mainVariable.o: mainVariable.cpp utVariable.h variable.h
		g++ -std=c++11 -c mainVariable.cpp

utNumber: mainNumber.o
		g++ -o utNumber mainNumber.o -lgtest -lpthread
mainNumber.o: mainNumber.cpp utNumber.h number.h
		g++ -std=c++11 -c mainNumber.cpp

#exp: mainExp.o
#	g++ -o exp mainExp.o -lgtest -lpthread
#mainExp.o: mainExp.cpp exp.h global.h
#	g++ -std=c++11 -c mainExp.cpp

#utScannerParser: mainScannerParser.o term.o struct.o var.o list.o
#	g++ -o utScannerParser mainScannerParser.o term.o var.o struct.o list.o -lgtest -lpthread
#mainScannerParser.o: mainScannerParser.cpp utScanner.h utParser.h scanner.h parser.h term.h var.h struct.h list.h global.h node.h
#		g++ -std=c++11 -c mainScannerParser.cpp

#utTerm: mainTerm.o term.o struct.o var.o list.o
#	g++ -o utTerm mainTerm.o term.o var.o struct.o list.o -lgtest -lpthread
#mainTerm.o: mainTerm.cpp utTerm.h term.h var.h utStruct.h struct.h list.h utList.h
#	g++ -std=c++11 -c mainTerm.cpp
#term.o: term.h term.cpp
#	g++ -std=c++11 -c term.cpp
#struct.o: struct.h struct.cpp
#	g++ -std=c++11 -c struct.cpp
#var.o: var.h var.cpp
#g++ -std=c++11 -c var.cpp
#list.o: list.h list.cpp term.h var.h
#	g++ -std=c++11 -c list.cpp
clean:
	rm -f *.o madRace utAtom
stat:
	wc *.h *.cpp





# INC_DIR = include
# TARGET = hw1

# all: $(TARGET)

# $(TARGET): main.o Shapes.o Media.o Sort.o
# ifeq (${OS}, Windows_NT) 
# 	g++ -o $(TARGET) main.o Shapes.o Media.o Sort.o -lgtest
# else
# 	g++ -o $(TARGET) main.o Shapes.o Media.o Sort.o -lgtest -lpthread
# endif

# main.o: main.cpp utSort.h
# 	g++ -std=gnu++0x -c main.cpp

# Shapes.o: $(INC_DIR)/Shapes.h Shapes.cpp
# 	g++ -std=gnu++0x -c Shapes.cpp

# Media.o: $(INC_DIR)/Media.h Media.cpp
# 	g++ -std=gnu++0x -c Media.cpp

# Sort.o: $(INC_DIR)/Sort.h Sort.cpp
# 	g++ -std=gnu++0x -c Sort.cpp

# clean:	
# ifeq (${OS}, Windows_NT) 
# 	del *.o *.exe
# else
# 	rm -f *.o $(TARGET)
# endif