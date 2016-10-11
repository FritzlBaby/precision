#! /usr/bin/env python

########################################
#                                      #
#     Precision Test                   #
#                                      #
#     FrB                              #
#                                      #
########################################

"""
Description
===========
Python script to test import of fortran module and
precision of passed arguements

"""

import numpy as np
import precision

single_precision_in = np.float32(1.0)
double_precision_in = np.float64(1.0)

# arrays:
d32 = np.dtype(np.float32)
d64 = np.dtype(np.float64)
np_array32 = np.array([32, 10, 3, 2, 1], dtype = d32)
np_array64 = np.array([1, 2, 3, 10, 64], dtype = d64)


print " >>> Python declarations:"
print
print "Numpy: single precision = {0}".format(single_precision_in)
print np.finfo(single_precision_in)
print
print "Numpy: double precision = {0}".format(double_precision_in)
print np.finfo(double_precision_in)
print
print "Numpy: single precision array = {0}".format(np_array32)
print np.finfo(np_array32[0])
print
print "Numpy: double precision array = {0}".format(np_array64)
print np.finfo(np_array64[0])
print

# through interface
precision.py_interface(single_precision_in, double_precision_in, np_array32, np_array64)

# through module/subroutine
#precision.precision_module.print_precision(single_precision_in, double_precision_in)

########################################
#                                      #
#     Precision Test                   #
#                                      #
#     FrB                              #
#                                      #
########################################
