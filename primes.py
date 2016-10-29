"""
this module content one class call PrimeClass
"""


class PrimeClass(object):
    """
   inside here is where we going to define the function for the operation
    """

    def is_prime(self, num_int):
        """
        read the number and we proceed to do the operation num_int
        """
        if num_int < 2:     
            return False
        for num_loop in range(2, num_int):
            if num_int % num_loop == 0:
                return False
        return True
