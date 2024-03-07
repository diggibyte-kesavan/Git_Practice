# check the type of data

x=5
print(type(x))

my_string = "byte"
print(type(my_string))

x=range(5)
print(x)
print(type(x))

# setting the specific data type

a = str(4)
print(a)
print(type(a))

var_int = int(5)
print(var_int)

specific_list = list(("kesav","murugan","amar"))
print(specific_list)
print(type(specific_list))

list_dict =dict(name="kesvan", age=30)
print(list_dict)
print(type(list_dict))

# type conversion

# convert one type to another type

value1 =4

# change int type to float

value_float =float(value1)
print(value_float)
print(type(value_float))

# Randomly pick some number between 0 to 9

import random
print(random.randrange(0,9))