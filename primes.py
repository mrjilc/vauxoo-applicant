"""
this module content one class call PrimeClass
"""


class PrimeClass(object):
    """
   inside here is where we going to define the function for the operation
    """

    def is_prime(self, num_int):
        """
        read the number and we proceed to do the operation num_int is the variable
        """
        if num_int < 2:     # if the number is less than 2 is not prime, so return false
            return False
        for num_loop in range(2, num_int):  # create a For loop with a range between  2 and the number
            if num_int % num_loop == 0:    # if the modulo give a O is not prime, so return False
                return False
        return True
