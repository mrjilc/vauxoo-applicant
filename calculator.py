"""
This module content one class call CalculatorClass , and inside two function, one called num_list
and the other called sum, we are going to ask for how many numbers wants to sum them we are going
to do the operation, after that we going to print the result
"""


class CalculatorClass(object):
    """
    Here we define two variables list and sum_num, sum_num we are going to perform the sum
    """
    list = [2, 3, 4, 5]
    sum_num = 0

    def sum(self):
        """
        we are going to proceed to sum, whit a For loop and after the loop print the results
        """
        for i in self.list:
            self.sum_num += i
        print("La Suma De Los Datos Es: ", self.sum_num)

result = CalculatorClass()  # create the object
result.sum()  # Do the sum and print the results
