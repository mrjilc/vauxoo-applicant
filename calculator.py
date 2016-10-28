"""
This module content one class call CalculatorClass , and inside two function, one called num_list
and the other called sum, we are going to ask for how many numbers wants to sum them we are going
to do the operation, after that we going to print the result
"""


class CalculatorClass(object):
    """
    Here we define two variables list and sum_num, the list we initiate in nothing only to fill
     and in sum_num we are going to perform the sum
    """
    list = []
    sum_num = 0

    def num_list(self):
        x = int(input("Ingrese Tamaño De La Lista: "))  # ask for the quantity of numbers to sum
        for i in range(x):
            # fill the list
            self.list.append(int(input("Ingrese Numero: ")))

    def sum(self):
        """
        after fill the list we are going to proceed to sum, whit a For loop and after the loop
        print the results
        """
        for i in self.list:
            self.sum_num += i
        print("La Suma De Los Datos Es: ", self.sum_num)

result = CalculatorClass()  # create the object
result.num_list()  # Call the fuction for the list
result.sum()  # Do the sum and print the results
