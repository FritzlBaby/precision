# make file for Python/Fortran
FCOMP := gfortran
PCOMP := f2py

FCFLAG := -c -Wall
FEFLAG :=
PFLAG :=

FEXT = .f90
PEXT = .py

FCODE := precision
PCODE := py_$(FCODE)
INTER := $(FCODE)_interface$(FEXT)

SRC = $(filter-out $(INTER), $(wildcard *$(FEXT)))
OBJ = $(SRC:$(FEXT)=.o)

all: $(SRC) $(FCODE)

$(FCODE): $(OBJ)
	$(FCOMP) $(FEFLAG) $(OBJ) -o $@

%.o:%$(FEXT)
	$(FCOMP) $(FCFLAG) $< -o $@

$(FCODE)_program.o: $(FCODE).o

clean:
	rm *.mod *.o $(FCODE)
