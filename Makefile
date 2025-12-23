all:
	@echo ""
	@echo "---------------------------------------------------------------------------------------------------"
	@echo " CSES makefile"
	@echo "---------------------------------------------------------------------------------------------------"
	@echo ""
	@echo "make PROBLEM=<problem_name> run                               # Compile and run C++ solution"
	@echo "make PROBLEM=<problem_name> create                            # Create template C++ solution"
	@echo ""
	@echo ""

compile:
	g++ -std=c++0x -O2 -Wall -g $(PROBLEM).cc -o $(PROBLEM)

run: compile
	./$(PROBLEM) < $(PROBLEM).in > $(PROBLEM).out

clean:
	@rm -rf $(PROBLEM) $(PROBLEM).out $(PROBLEM).dSYM

create:
	@cp template.cc $(PROBLEM).cc
	@touch $(PROBLEM).in
	@touch $(PROBLEM).out

install_std:
	sudo mkdir -p /Library/Developer/CommandLineTools/usr/include/bits/
	sudo cp stdc++.h /Library/Developer/CommandLineTools/usr/include/bits/
