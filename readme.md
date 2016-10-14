Precision
=========

Test area for precision between Fortran and Python.

Fortran compiler used: gfortran

Developed on a Raspberry Pi: Model B running Raspbian

---

## Fortran

To make standalone Fortran module:

    $ make fcode

To test:

    $ ./precision

## Python

To make Python callable module (.so):

    $ make pycode

To test:

    $ ./precision.py

To import in interactive Python:

    $ python
    > import precision

Then you can use subroutines in precision like any other Python module
