# -*- coding: utf-8 -*-
'''
  fastmat/Outer.pxd
 -------------------------------------------------- part of the fastmat package

  Header file for Outer base class (structural description).


  Author      : sempersn
  Introduced  : 2017-01-31
 ------------------------------------------------------------------------------

   Copyright 2016 Sebastian Semper, Christoph Wagner
       https://www.tu-ilmenau.de/ems/

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

 ------------------------------------------------------------------------------
'''
import cython
cimport numpy as np

from .Matrix cimport Matrix
from .core.types cimport *

################################################################################
################################################## class Matrix
cdef class Outer(Matrix):

    ############################################## class variables
    cdef public np.ndarray _vecV                 # matrix vertical vector
    cdef public np.ndarray _vecH                 # matrix horizontal vector
    cdef public np.ndarray _vecVHerm             # matrix vertical vector
    cdef public np.ndarray _vecHConj             # matrix horizontal vector
    cdef public np.ndarray _vecVRav              # ravelled vertical vector
    cdef public np.ndarray _vecHRav              # ravelled horizontal vector

    ############################################## class methods
    cpdef np.ndarray _forward(self, np.ndarray)
    cpdef np.ndarray _backward(self, np.ndarray)

    cpdef np.ndarray _reference(self)
