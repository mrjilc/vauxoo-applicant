"""
This module content one class call CalculatorClass , and inside a function sum, we are going
to do the operation, after that we going to print the result
"""


class CalculatorClass(object):
    """
    Here we define a variables sum_num in 0, sum_num we are going to perform the sum
    """

    sum_num = 0

    def sum(self, list):
        """
        we are going to proceed to sum, whit a For loop and after the loop print the results
        """
        for i in list:
            self.sum_num += i
        print("La Suma De Los Datos Es: ", self.sum_num)
