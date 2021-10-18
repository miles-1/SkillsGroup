
# Lesson 06

## Contents
- [Review](#review)
- [Defining Functions](#defining-functions)
    - [Abstraction and Encapsulation](#abstraction-and-encapsulation) 
    - [Scope](#scope)
- [To do before next time](#to-do-before-next-time)

---

## Review

- Lists are **mutable** and **iterable**. They can contain any data type in any combination. What happens in the code below?

    ```python
    lst = [1, 2]
    lst.append(lst)
    print(lst)
    ```
    Interestingly, this list now contains itself. When we append `lst` to itself, it doesn't pass a copy of itself, it passes the reference to the dynamic element itself. So when you see `[1, 2, [...]]`, that is python's way of saying "this goes on and on because it contains itself." That means on this list, `lst[2]` is equivalent to `lst`, so `lst[2][2][2][2][1]` is the same as `lst[1]`. Kinda fun lol, but not something that would be helpful to do in practice. 

- The above also shows that python is **pass by reference** (instead of pass by *value*), meaning that if you give a mutable object to a function, it will not make a copy of it, it passes the object itself. See more info below.

- Algorithms are series of instructions that solve problems. Often times, 

## Defining Functions

There are many instances where you run the same bit of code over and over. It is NOT a good idea to retype this many times, since if you ever want to change it, it makes it many times more difficult to remember to change all the instances of that code. It's much better to wrap that code into a function and then use the function wherever necessary.

### Example

Say you have 5 lists each with 3 numbers, like what you see here:

```python
lsts = [[1, 2, 3],
        [4, 3, 2],
        [6, 3, 1],
        [5, 5, 5],
        [8, 2, 1]]
```

Do not panic, I repeat: do NOT panic. This is just a list of lists. That means that above `lsts[1]` would return the list `[4, 3, 2]`, and to get the first element of *that* list, you could type `lsts[1][0]`, which gives `4`. Say you want to average each of the sublists, which is the same as calculating their sum and dividing that by the length of the list. Here's one messy approach:

```python
avg_lst = []

avg_lst.append(sum(lsts[0])/len(lsts[0]))
avg_lst.append(sum(lsts[1])/len(lsts[1]))
avg_lst.append(sum(lsts[2])/len(lsts[2]))
avg_lst.append(sum(lsts[3])/len(lsts[3]))
avg_lst.append(sum(lsts[4])/len(lsts[4]))
```

Writing code like this just looks intimidating. Say you wanted to make a small adjustment, like making it a "sample mean" instead of a population mean (which is a slightly different equation). You'd have to make sure that you fix each of those lines of code. If there is a 20% probability of you messing up in editing *one* of the lines, then after getting 5 chances to mess it up, you're not very likely to have gotten all of them right.

Here's a better approach:

```python
def avg(input_lst):
    return sum(input_lst)/len(input_lst)

avg_lst = []
for lst in lsts:
    avg_lst.append(avg(lst))
```

So here, instead of writing the code over and over, we've "wrapped up" the average calculation into a function. Note what happens when you run the following code, any time after the function definition:

```python
print(avg)
```

### Abstraction and Encapsulation

Before I explain what's going on up in the example, I want to talk about the motivation of defining a function. What we've done here is an important step in the logic of coding: **abstraction** and **encapsulation**. There is a lot of coding that is just plain old bookkeeping. It is uninteresting, hard to follow and semantical. It does the job, but it's not easy to read. Obviously, computing an average is not *that* hard, but let's pretend it is really complicated for a second. If so, it is nice for people reading your code to have the average computation *abstracted*/*encapsulated* to a function call `avg`. 

Imagine how nice that is for a user: there's a scary computation, but you can trust the holy function `avg` to do it for you. The code for averages is wholly contained in that function call (aka *encapsulated*), and you don't have to worry about the details (aka *abstracted*).

### Example Walkthrough

Anyways, back to our example. Let's pick it apart a bit:

- The `def` keyword is used to tell python that you are going to define your own function. Not incredibly surprising.
- Then, you type the name of your function. The name can be anything with numbers, letters or underscores as long as it doesn't start with a number. This will be what you type to use the function.
- Now, without a space after the name, you put parentheses. These will define your input values. There can be as many as you'd like.
- After the colon, there's a new line and an indent. Any code indented here will be run when you call the function, and will keep running until you hit the `return` keyword, which will exit out of the function and ignore any code below.

### More Examples

Let's do some more practice with functions to see this in action.

1. You want to write a function that takes a list of numbers and finds which of those is closest to the number `3`. Here's an option of how to do this:
    ```python
    def closestTo3(lst):
        closest = lst[0]
        for item in lst[1:]:
            if abs(3 - item) < abs(3 - closest):
                closest = item
        return closest
    ```

    How I decided to approach this might seem a little weird, but it's good practice to walk through this:
    - First, you assume that the first number (aka `lst[0]`) in the list is the one closest to the number 3 (a likely false assumption).
    - Next, you check all the *other* numbers in the list (aka `lst[1:]`) one by one and see if any of them are closer to 3. If they are, they become the new value of `closest`. 
    - At the end, we return whichever value of `closest` survives the `for` loop.
    
    Using this function on a list called `num_lst` would look like `closestTo3(num_lst)`, and the result could be printed or saved into a variable.

2. Let's just adjust what the previous function did so that you're not tied down to the number `3` and could use your own number:
    ```python
    def closestTo(lst, num):
        closest = lst[0]
        for item in lst[1:]:
            if abs(num - item) < abs(num - closest):
                closest = item
        return closest
    ```

    The only difference here is that we've added a parameter: `num`. Now, the function returns whatever is closest to the given number. Using this function on a list called `num_lst`, where you're looking for the number closest to `4`, it would look like `closestTo(num_lst, 4)`, and the result could be printed or saved into a variable.
3. Function parameters can have default values. See here:
    ```python
    def closestTo(lst, num=3):
        closest = lst[0]
        for item in lst[1:]:
            if abs(num - item) < abs(num - closest):
                closest = item
        return closest
    ```
    This is the same as last time, except that we've put `num=3` instead of just `num` in the definition. This is pretty straightforward, it means that you can omit putting anything in for `num`, and if you don't put anything the value will default to `3`. These are called "keyword parameters" since you can assign them by using the name of the parameter in any order. The parameters without any default values are called "positional arguments" since you usually fill them in in whatever order the definition gives. Note that given the list `num_lst`, all the following are equivalent:

    - `closestTo(num_lst)`
    - `closestTo(num_lst, 3)`
    - `closestTo(num_lst, num=3)`

4. Functions don't need to have inputs, nor do they need to return anything. See here:
    ```python
    def waitMessage():
        print("Please wait...")
    ```
5. The keyword `return` ends the function. See how that is used to our benefit below:
    ```python
    def findNumber(lst, num):
        for item in lst:
            if num == item:
                return True
        return False # Only gets returned if other return isn't hit
    ```
    The code above is equivalent in function to the single line `num in lst`.

### Scope

The topic of **scope** has been subtly discussed before. The "scope" of a variable is where in the code it is defined. For example, the code below does not work when you run it alone, because the variable `value` is only defined by line 2, yet we're trying to access it in line 1.
```python
print(value)
value = 5
```
What we could say is that the *scope* of `value` is line 2 and onward.

How does this apply to functions? Well, say you define a variable inside a function and try to access it later:

```python
def exampleFunction(user_input):
    var = user_input.upper()
    print(var[:5])

string = "Hello, my name is Timothy"
exampleFunction(string)
print(var)
```
What is wrong here? If you run this, you get this error:

```
NameError: name 'var' is not defined
```
Clearly `var` is defined, it is defined in the function definition! ~However~, this is where scope gets fancy. Any variables defined within a function only have scope *within* the function, and cannot be accessed outside of the function, and is aptly called a **local variable**. 

This is helpful, because that means you can kind of treat functions like the encapsulated code they are supposed to be. This is the theory: Functions should stay abstract. You shouldn't have to dig into functions and access variables. Functions should be treated like black boxes, having an input and an output but no need to open the box. This logic leads to easier-to-read code.

If you *did* want to access some variable that isn't returned in the function, the most appropriate thing to do would be to redefine the function to return that information as part of the function call. Changing the example a bit:

```python
def exampleFunction(user_input):
    var = user_input.upper()
    print(var[:5])
    return var

string = "Hello, my name is Timothy"
var = exampleFunction(string)
print(var)
```

As you can see, now `exampleFunction` returns something when executed, and the return value can be saved into a variable and used later. Note that in this case I reused the `var` variable. That is not because you need to, I was just trying to prove that the variable *names* within a function definition can be re-used outside of it without reprocussions.

As is often the case, there is a work-around to scope in functions. Using the same example as before:

```python
def exampleFunction(user_input):
    global var
    var = user_input.upper()
    print(var[:5])

string = "Hello, my name is Timothy"
exampleFunction(string)
print(var)
```
Now, we use the `global` keyword to force the scope of `var` to extend beyond the function and be used elsewhere. However, this is pretty universally discouraged because it is harder to read what is happening and can lead to messy coding practices. It also breaks down the effectiveness of abstraction/encapsulation.

### Post Script

The original example above can be done in one line without a function definition, so that this:

```python
def avg(input_lst):
    return sum(input_lst)/len(input_lst)

avg_lst = []
for lst in lsts:
    avg_lst.append(avg(lst))
```
... is equivalent to this:
```python
avg_lst = [sum(sublst)/len(sublst) for sublst in lst]
```
It's not like one approach is inherently better than the other, but the argument could be made that the second option is faster to type & read. But that's only if you feel like it makes sense to read it.

## To Do Before Next Time

> *To Do*: Complete the following project before next meeting.

### Project: Define a function that performs bubble sort on any numeric list. Make sure that it returns a sorted version of the list instead of sorting in-place.

This relies pretty strongly on what was discussed last week. Feel free to use code from last week to help with the logistics.

