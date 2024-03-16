name_string = "kesava"
print(name_string)

set_word = "kesk"

if len(set_word) == len(set(set_word)):
    print("it is a unique word")
else:
    print("not a unique word")

set_word = "kesa"

if len(set_word) == len(set(set_word)):
    print("it is a unique word")
else:
    print("not a unique word")

# string in index

string = "hello"
print(string[1])

# string in looping

for i in "apple":
    print(i)

# string length

print(len(string))

# slicing

string1 = "diggibyte"
print(string1[0:3])

# slice from the start
print(string1[:5])  # without starting value it will take a stating value.

# slice to the end
print(string1[2:])

# negative indexing
print(string1[-5:-2])
b = " Hello, World! "

print(b[-5:-2])  # -5 included -2 is not included.
# upper case
print(b.upper())

# lowercase
print(b.lower())

print(b.strip())  # removes the whitespace from the beginning or the end.

print(b.split(','))

# String Concatenation

str1 = "kesav"
str2 = "kumar"

str_add = str1 + " " + str2  # add the space
print(str_add)

str_count = "i play footbal,footbal is my favorite game"
c=str_count.count("footbal")
print(c)