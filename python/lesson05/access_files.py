### All the files quoted below are within the same 
### folder this script is in Github.

#-----------------------------------------------------
# Example 1
#-----------------------------------------------------
    
f = open("example1.txt") 
# this opens a text file that's in the same folder of 
# where this python script is
file_contents = f.read() 
# "dumps out" the contents of the file
f.close()
# closes the file

print("Example 1 results:", file_contents, end="\n\n")

#-----------------------------------------------------
# Example 2
#-----------------------------------------------------

f = open("example2.txt") 
file_contents = "" # make an empty string to add to
for line in f: # use a for loop instead of .read()
    file_contents += line
f.close()

print("Example 2 results:", file_contents, end="\n\n")

#-----------------------------------------------------
# Example 3
#-----------------------------------------------------

with open("example3.txt") as f:
    file_contents = f.read()

print("Example 3 results:", file_contents, end="\n\n")

# This is identical in function to the first example. 
# This "with" key word makes sure to close the file
# for you once you stop indenting.

