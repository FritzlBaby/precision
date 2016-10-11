Precision
=========

Test area for precision between Fortran and Python.

Fortran compiler used: gfortran 

---
To make standalone Fortran module:

    $ make fcode

To test:

    $ ./precision
---
To make Python callable module (.so):

    $ make pycode

To test:

    $ ./precision.py
