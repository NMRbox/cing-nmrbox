#----------------------------------------------------------------------- 
#
# matrix.pxd
# GWV Apr 2008
#
#----------------------------------------------------------------------- 
#
cdef enum:
    MATRIX_SIZE = 4
#
cdef class Matrix:
    #-----------------------------------------------------------------------
    #
    #   translation/rotation  MATRIX
    #   ======================
    #   1  0  0  X
    #   0  1  0  Y
    #   0  0  1  Z
    #   0  0  0  1   
    #-----------------------------------------------------------------------

    cdef double mtx[MATRIX_SIZE][MATRIX_SIZE]
#
#-----------------------------------------------------------------------