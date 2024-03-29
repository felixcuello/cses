all:
	@echo "CSES makefile"
	@echo ""
	@echo "make PROBLEM=<problem_name> run      # Compiles and run the problem"
	@echo "make PROBLEM=<problem_name> rbrun    # Run the problem (ruby)"
	@echo "...and so on :-) [Check the Makefile]"
	@echo ""

build:
	@g++ -std=c++0x -O2 -Wall -g $(PROBLEM).cc -o $(PROBLEM)

run: build
	./$(PROBLEM) < $(PROBLEM).in > $(PROBLEM).out

rbrun:
	ruby $(PROBLEM).rb < $(PROBLEM).in > $(PROBLEM).my_out && diff $(PROBLEM).my_out $(PROBLEM).out

debug: build
	@gdb ./$(PROBLEM) < $(PROBLEM).in

clean:
	@rm -rf $(PROBLEM) $(PROBLEM).out $(PROBLEM).dSYM

create:
	@cp template.cc $(PROBLEM).cc
	@touch $(PROBLEM).in

install_std:
	sudo mkdir -p /Library/Developer/CommandLineTools/usr/include/bits/
	sudo cp stdc++.h /Library/Developer/CommandLineTools/usr/include/bits/
