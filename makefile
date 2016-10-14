# make file for Python/Fortran

# compilers
FCOMP := gfortran
PCOMP := f2py

# flags
FCFLAG := -O3 -c -Wall
FEFLAG := -O3
PCFLAG := --overwrite-signature
PEFLAG :=

# file extentsions
FEXT = .f90
PEXT = .py

# names
FCODE := precision
PCODE := py_$(FCODE)
INTER := interface$(FEXT)

# source files and objects
SRC = $(filter-out $(INTER), $(wildcard *$(FEXT)))
OBJ = $(SRC:$(FEXT)=.o)

# rules
all: $(SRC) fcode pycode

# fortran rules
fcode: $(OBJ)
	$(FCOMP) $(FEFLAG) $(OBJ) -o $(FCODE)

%.o:%$(FEXT)
	$(FCOMP) $(FCFLAG) $< -o $@

# fortran dependencies
FDEPN = types
$(FCODE).o: $(FDEPN).o
$(FCODE)_program.o: $(FCODE).o

# python rules
pycode: pysig pymod

pysig: $(FCODE).o
	$(PCOMP) $(PCFLAG) -m $(FCODE) -h $(FCODE).pyf $(FCODE)$(FEXT) $(INTER)

pymod:
	$(PCOMP) $(PEFLAG) -c $(FCODE).pyf $(FCODE)$(FEXT) $(INTER)

fclean:
	@echo "removing Fortran specific files:"
	rm -f *.mod *.o $(FCODE)

pyclean:
	@echo "removing Python specific files:"
	rm -f *.pyc *.pyf *.so

clean: fclean pyclean

