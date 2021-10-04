
# Lesson 05

## Contents
- [Review](#review)
- [More on Immutability](#more-on-immutability)
- [Lists](#lists)
- [To do before next time](#to-do-before-next-time)

---

## Review

- `for` loops repeat code for each item in an iterable. `while` loops repeat code as long as the given condition evaluates to `true`.

- Files are open in python with the `open` function, and then can be read with the `.read()` method, and *should* be closed with the `.close()` method to make sure your computer can focus on more important things. Check out the [practice python file](access_files.py) to see more features of this file usage in python.

## More on Immutability

There's something different with lists that we haven't seen before. To start, let's talk briefly about how variables and data work. 

Variables point to where the data is stored on your computer. I'll get the details of this way off on this for sure, so don't go away thinking this is how it do be 100%, but the picture below is the general idea of what your storage looks like. If this is not correct, then it is a good way to think about things anyways. There's a huge list of slots to put things into, so your program will be storing things in these memory slots.

<img src="imgs/1.png" alt="numbered slots" width="200"/>

Let's start by saying `word = "dog"` in a program. That line does this: it makes the string `"dog"` and might store it at `123460`. Then, it makes the variable `word` and might store it at `123457` in memory. That means that whenever in the program we say the variable, the program knows to look at `123457`. Then, at the location where `word` stores things, the address for `"dog"` is stored. Overall, your memory now looks like this:

<img src="imgs/2.png" alt="numbered slots" width="200"/>

Now, whenever you call for `word` in your program, the computer checks what's at `123457`, then sees the `123460` and goes there, and then gets the word `"dog"`. Note that the whole word `"dog"` is stored all together, not character by character. Strings have a special property called **immutability**, meaning you can't change the string itself, you can only make new strings.

We've learned about `bool`s, `str`s, `int`s and `float`s. All are *immutable*, meaning that they cannot change. See the example below:

```python
value = 5
print(id(value))

# Above, it tells us the memory address of the number stored in `value`.
# If we run the code again, we get the same output:

print(id(value))

# Now, what happens when we add 1 to `value`? Is it the same integer
# object, just changed in value, or is it a brand new integer?

value += 1
print(id(value))
```
You'll see that the integer stored in `value` is actually swapped out for a *new* integer. Now that might not seem all that interesting, but it becomes interesting when you make *copies* of things. Check out the exercise below and guess what the two things printed out will be, and see if it meets you expectations:

```python
string1 = "So here's the story from A to Z. "
string2 = string1 
# Above is where the "copy" is made
string2 += "You wanna get with me? You gotta listen carefully"
# Add stuff to the end of the copy

# What prints out?
print(string1)
print(string2)
```

When you try this, you'll see that they are distinct strings when printed out. This is further illuminated by this code below (it will make the most sense after running it):

```python
string1 = "So here's the story from A to Z. "
string2 = string1 

print("-"*16)
print("Original Copies:")
print("-"*16)

print("string1's id (location in memory) is", id(string1))
print("string2's id (location in memory) is", id(string2))

string2 += "You wanna get with me? You gotta listen carefully"

print("\n" + "-"*28)
print("After Addition onto string2:")
print("-"*28)
print("string1 is located at", id(string1), "and has this value:", string1)
print("string2 is located at", id(string2), "and has this value:", string2)
```

A few things here:
- The `id` of `string1` doesn't change after the addition of characters. Initially, `string1` and `string2` have the same `id` but after the addition, `string2`'s `id` changes. This is because a *new* string was made. Likewise, in the code below, using a method (in this case, `.upper()`) on a string does not change the original string but instead returns a new string.
    ```python
    string_ex = "hello"
    print("Before .upper():", id(string_ex))
    string_ex.upper()
    print("After .upper():", id(string_ex))
    print("What is returned by .upper():", id(string_ex.upper()))
    ```
- This shows that strings are immutable. That is usually the case for coding languages with integers, strings, floats and booleans (often called "primitive data types"). However, it is not always the case that all data types are immutable.
- *Note*: if you run either of the two above code blocks multiple times, you'll see that you'll get different `id` results between runs. That's because python is making a fresh string from what you typed out each time.

## Lists

A turning point in your python career swiftly approaches. Soon, the power of the world will be at your very fingertips.

In most cases for any interesting coding problem, you'll want to somewhere in your code use a collection of things. For example, you may have numbers for some measurement you've been making, and you want to square each of them. Or something like that. Well, that would look like this:

```python
lst = [1, 5, 6, 2, 3, 4, 1]

for entry in lst:
    print(entry**2)
```

Or, alternatively:

```python
lst = [1, 5, 6, 2, 3, 4, 1]

for i in range(len(lst)):
    print(lst[i]**2)
```

Note that both above use `for` loops, but the first uses the list itself as the iterable for the `for` loop whereas the second instead uses a `range` object that goes from `0` up til (but not including) `7`, and then the respective element is accessed much like it would be in a string: by using `[]`.

*Side comment:* It's a bad idea to name a variable `list` since that's also the name of the function to convert things to lists. That's why I have `lst` as the variable name above.

Lists do not have to be of all the same data type. The list below is valid in python. However, it is not always a great idea to use this feature since it is considered sloppy design.

```python
lst = [0, "One", 2.0, "3"]
```

As you'll see below, lists have some characteristics that they share with strings, but certainly not all.

Here are a few things to know about using lists:
- `len()` is the function to find the number of items in the list (same as strings in finding number of characters).
- `[]` can be used to get the element at a given index (same as strings in getting character at given index). Ranges can also be given, such as `lst[3:6]`, which returns a list of the elements from index 3 up to but not including index 6 (also like strings).
- `.index()` is a method that can find the first occurence of a given object (also like strings).
- `in` can be used to test if an element is in a list to return a boolean (like strings).

Changing to things that lists can do that strings can't:
- `.pop()` **removes** & **returns** the last element (if empty parentheses) or specified element (if index given) of list. See below:
    ```python
    lst = [1, 3, 5, 7]

    print("lst before .pop():", lst)

    output = lst.pop()

    print("output of .pop():", output)
    print("lst after .pop():", lst)
    ```
- Reexamining the code from above, we can also see that although `lst` is only assigned something *once*, that thing **changes** after getting `.pop()` called on it. Let's see if the computer also considers it the same thing:
    ```python
    lst = [1, 3, 5, 7]

    print("lst before .pop():", lst)
    print("lst id before .pop():", id(lst))

    print("id of last element before .pop()", id(lst[3]))

    output = lst.pop()

    print("output of .pop():", output)
    print("id of output of .pop():", id(output))

    print("lst after .pop():", lst)
    print("lst id after .pop():", id(lst))
    ```
    This demonstrates that lists are **mutable** in python, unlike strings.
- You can change individual elements of lists without having to make a whole new list using `[]` and `=` together, which you can't do with strings:
    ```python
    lst = [1,6,3,4,5]
    lst[1] = 2
    print(lst)
    ```
- You can add to the end of lists without needing to make a new list:
    ```python
    lst = [1,2,3,4,5]
    lst.append(6) # add single element
    lst += [7,8,9] # add multiple elements
    print(lst)
    ```

Now, let's go back to talking about memory and look at how lists do things differently.

Say we run the line `myList = ["dog","cat","Jim"]`. Then, what happens is a little more complicated. First, the three strings find a home in memory somewhere and stay there (below, they are in `123459`-`123461`). Then, a list is made that holds the addresses to each of those strings, and this list is stored somewhere, like at address `123457`. Finally, the variable `myList` is created at `123456`, and the reference to the location of the list is stored there. Hopefully the illustration below makes sense:

<img src="imgs/3.png" alt="numbered slots" width="200"/>

Mutability is really nice for lists. It's nice to have just one list that you can add things to, instead of having to make new ones all the time like with strings. This comes at a small cost, though. Run the code below and see what happens:

```python
guestList1 = ["Sam","Pam","Gamgee"]
guestList2 = guestList1  # attempt to make a copy

guestList2[1] = "Davy"
print(guestList1)
print(guestList2)
```
You can see here that any change you make to `guestList2` will also occur in `guestList1`, and this is due to the fact that you're not making a *copy* of the list in line 2, you're actually just straight up telling both variables to point to the same thing. To fix this, use the `.copy()` method in line 2 instead, which will make a new spot in memory for a copied list:
```python
guestList2 = guestList1.copy()
```
## To Do Before Next Time

> *To Do*: Complete the following project before next meeting.

### Project: Check the spelling of words in a file based on a dictionary.

You have two files. One is a dictionary, basically, and another is a paper you wrote late at night while you were dozing off. How can you make a program that will check which words in your paper are in the dictionary and which ones aren't? Here's the [dictionary](dictionary.txt) and your [late-night paper](paper.txt). Use at least one function and one list.

