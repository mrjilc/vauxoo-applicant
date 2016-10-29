"""
This module content one class call CalculatorClass
"""


class CalculatorClass(object):
    """
    Here we define a variables sum_num in 0, sum_num we are going to perform the sum
    """

    sum_num = 0

    def sum(self, num_list):
        """
        we are going to proceed to sum, whit a For loop and after the loop print the results
        """
        for num in num_list:
            self.sum_num += num
        return self.sum_num
