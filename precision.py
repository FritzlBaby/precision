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


print " >>> Python declarations:"
print
print "Numpy: single precision = {0}".format(single_precision_in)
print np.finfo(single_precision_in)
print
print "Numpy: double precision = {0}".format(double_precision_in)
print np.finfo(double_precision_in)

precision.precision_module.print_precision(single_precision_in, double_precision_in)


########################################
#                                      #
#     Precision Test                   #
#                                      #
#     FrB                              #
#                                      #
########################################
