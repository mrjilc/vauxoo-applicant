"""
this module content one class call PrimeClass, one Function call is_prime, inside is_prime
we are going to make all the operation, outside is the input asking the numer we want to know
if is prime or not, and the print of that question
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
        for i in range(2, num_int):  # create a For loop with a range between  2 and the number
            if num_int % i == 0:    # if the modulo give a O is not prime, so return False
                return False
        return True

num_prime = PrimeClass()  # create the object for the class
print(num_prime.is_prime(7))  # show the result
num_prime2 = PrimeClass()
print(num_prime2.is_prime(12))
