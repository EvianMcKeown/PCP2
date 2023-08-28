JAVAC=/usr/bin/javac
JAVA=/usr/bin/java
.SUFFIXES: .java .class
SRCDIR=src
BINDIR=bin

$(BINDIR)/%.class:$(SRCDIR)/%.java
	$(JAVAC) -d $(BINDIR)/ -cp $(BINDIR) $<
        
CLASSES=PeopleLocation.class PeopleCounter.class GridBlock.class\
        CounterDisplay.class ClubView.class ClubGrid.class\
        Clubgoer.class ClubSimulation.class
CLASS_FILES=$(CLASSES:%.class=$(BINDIR)/%.class)

default: $(CLASS_FILES)

clean:
	rm $(BINDIR)/*.class
         
run: $(CLASS_FILES)
	$(JAVA) -cp bin ClubSimulation