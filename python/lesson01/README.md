
# Lesson 01

## Contents
- [Review from last time](#review-and-extend)
- [Reading & interpreting code](#reading-and-interpreting-code)
- [Errors vs Convention](#coding-errors-vs-convention)
- [Python in the command line](#python-in-the-command-line)
- [Special string features](#special-string-features)
- [To do before next time](#to-do-before-next-time)

---

## Review and extend

We'll cover how everything went for everyone and share some examples from people's work.

Then, we'll review what we went over last time, and add a bit more detail to what we talked about:

- A **function** is the equivalent of a verb in Python, effectively performing some action.

- Functions (like `print` and `input`) have inputs (**arguments**) and outputs (**return type**). Some functions take no arguments and some functions have a return type of `None` (instead, those perform some action).

- Variables are things to store values/data into. Variables can be any length, and can include letters, numbers and underscores, as long as they don't start with a number. Variables always have to be given a specific value before you refer to them in some other way.

    - If a word is special in python (e.g. `in`, `and`, `if`, etc) it is called a "key word". Those are reserved, so you shouldn't use them for variable names.

- The assignment operator `=` puts data into a variable. 

    - The variable that the data will be assigned into is always on the left. It can be its first occurrence in the program or an update in value.

- There are four major data types to be aware of:

    - **integer**: all whole numbers, positive and negative. Ex: `3`. Converting things to integers is done by using the `int()` function.

    - **float**: decimal numbers. Ex: `2.937`. Convert to float using `float()` function.

    - **string**: a series of characters within quotation marks (either `""` or `''`). Ex: `"hello"` or `'hello'`.  Convert to string using `str()` function.

    - **boolean**: a true or false value. Ex: `True` or `False`. Convert to boolean using `bool()` function. The need to convert to a boolean is super rare.

        - The `==` sign is to test whether the objects on both sides are equal, and returns a boolean value. For example, `"3" == "3"` has the value `True` when evaluated.

        - The words `and` and `or` can be used to combine booleans.

        - The word `not` preceding a boolean flips it to the opposite value.

        - Parentheses can be used around boolean things (and arithmatic) to make things more clear.

- Comments can be included in code using the `#` sign. Anything after it in a line is ignored by the computer.

- In `if`/`else` blocks, a piece of code indented after `if`, `elif`, or `else` is run only if 1) its accompanying condition is fulfilled (except in the case of using `else`) and 2) if no previous `if` or `elif` statements have been `True`.

- When a function is used, it is common to say that it has been "called". Ex: "The `input` function is called here to get user input".

- There is a special subtype of functions called **methods** that are called using the format `<Thing to act on>.<method name>()`.

    - For example, if a variable `word` has the value `"NAME"`, then `word.lower()` gives an all-lowercase version of the string (`"name"`).

    - As another example, checking if a string contains only number characters can be done using the `.isdigit()` method, which returns `True` or `False`.

- The `in` word is used to check if a string exists anywhere within another, and returns a boolean. Ex: `"good" in "good morning"` returns `True` when evaluated.

- *Quick new idea:* Computers always count from zero. In the string `"hello"`, the `"h"` is considered to be at index (or position) `0`, `"e"` at index `1`, etc. This will be significant later in this page. However, when talking about the length of a string, we use the normal counting system (ex: `"hello"` has a length of `5`).

---

## Reading and Interpreting Code

To help with understanding, we'll do a few examples of  pieces of code, and predict its behavior. Some of these are tricky. Run them for yourself from a .py file if you're unsure how they'll behave.

What happens when this program runs? Does it work? Think about arguments and return values for both functions involved.

```python
print("Hello, " + input("What is your name? ") + ".")
```

How about this one?

```python
print(print("Hello."))
```

Does this work? If so, what is the value of word in this program?

```python
word = "DOG".lower()
```

If a user types `yes` for the first question and `NO` for the second for the following programs, what happens?

```python
isTall = input("Are you tall? ")
hasCovid = input("Do you have the Covid? ")
if (isTall == "yes") and (hasCovid == "no"):
    print("Maybe Covid can't fly too high")
else:
    print("Okay.")
```

What happens in this program when `answer` is `"Not good."`?
```python
answer = input("How is your day going? ").lower()
if "not good" in answer:
    print("Awww.")
if "good" in answer:
    print("This is really good news to hear. I love it.")
```

What happens in this program? You might be able to tell what the problem is even if you don't know how the program will respond.
```python
print("~ Welcome to the number multiplier ~")

num1 = int(input("What is the first number? "))
num2 = int(input("What is the second? "))

if num1 == 0 or 1:
    print("You should know this one. I won't tell you.")

print("The answer is " + str(num1 * num2))
```


What is the behavior of this program when we run it? How about if `first_name` was `"Chase"`? How about if `first_name` was `"James "` (note the space a the end)?
```python
first_name = "James"
last_name = "KickButt"

if (first_name == "James"):
    if (last_name == "KickButt"):
        print("Wow. What a name.")
    else:
        print("That is a pretty normal name.")
else:
    print("The name is " + first_name + last_name + ".")
```

---

## Coding Errors vs Convention
Many errors are manifested by the program crashing, but this is not always the case. There are three classes of errors that you'll experience.

- **Syntax errors**: These are when the programmer includes/excludes character(s) in their code that python won't even try to run because the error is screened beforehand.
    ```python
    1   print("hello)  # error ex 1: missing an end quotation
    2   if name == "miles"  # error ex 2 & 3:   missing a colon and an indentation below
    3   print("Hello, Miles")
    ```
- **Run-time errors**: These are errors that escape the initial check-through of python to see if there are any problems, but cause the program to crash later.
    ```python
    1  age = input("How old are you? ")
    2  birth_year = 2020 - age  # error ex: no matter what the user types in,
    3  print(birth_year)        # age will always be a string, so this crashes.
    ```
- **Logic errors**: These are when the code technically finishes without crashing, but it didn't do what you intended it to do because there is a misuse of some code.
    ```python
    1  isHappy = input("Are you happy? ")
    2  knowsIt = input("Do you know it? ")
    3  print("You should clap, t/f: " + str(isHappy == "yes" or knowsIt == "yes"))        
    4  # error ex (above): it should be and, not or.
    ```

These errors cause bad program performance, and are definitely a problem. Separately, there is plenty of "convention" involved in how to code. Disobeying convention never breaks a program. It is almost completely subjective, but it is nonetheless nearly essential to follow some convention to make your code readable for other people. When code gets longer than a few lines, you'll definitely want to be consistent or it can get ugly fast. Here are some conventions I follow, and ones I think are a good idea:

- In general, put one space on each side of these characters: `=`, `+`, `-`, `/`, `*`, `%`.

- Variable names should be written all in camel case (`hereIsAnExample`) or all with underscores (`here_is_an_example`).

- Variable names should make sense to the kind of information they hold. Some examples:

    - A boolean variable storing if the user wants cheese on a hamburger ordered online, the variable could be `wantsCheese`, since it would be obvious that this would store a boolean on the topic.

    - An integer variable keeping count of the number of kids someone has could be called `childCount`.

    - A string storing user response to something labelled "question 1" can be simply called `q1Response`.

- Even when you *can* avoid the use of a variable, it's not always helpful for readability (ex: first example in previous section).

- Use comments to keep track of the code's purpose when variable names can't be descriptive enough.

- Put blank lines between chunks of code with distinct functions for easy readability.

---

## Python in the Command Line

> *To Do:* use the REPL
>
> Go into the terminal and type `python` (or `python3` for Mac users) and hit enter. We did this last week as well. You have entered the **Read-Eval-Print Loop** (REPL, pronounced "repple"). It's called that because it reads the single line of code you've typed, evaluated it, and it prints the data involved. Try out the following examples where appropriate, and get familiar with how to navigate the repl.

In the REPL, you can test all sorts of code and see if it works, instead of needing to save the code and run it each time. Below is a line-by-line example. Note that I pressed enter after each line starting with `>>>` and that python printed the rest of the lines in response to what I've typed. Also, notice that if I store data in a variable, it is not printed, but can be printed afterwards by just typing in the variable name and hitting enter.

```
>>> name = "NaMe HERe"
>>> name.lower()
'name here'
>>> name
'NaMe HERe'
>>> number = input("Type a number here: ")
Type a number here: 8
>>> number
'8'
>>> number.isdigit()
True
```

Exit out of the repl by typing `quit()` and hitting enter.

Additionally, you can run python files directly in the command line (***Remember that Windows users will say `python` instead of `python3`):

```
miles@MilesMacbook Desktop % python3 code.py
```

This alone is a good way to interact with the program for reasons we'll go into later. However, in addition to this command, we can use a special interactive tag `-i` that allows us to check on our program to see what went wrong. For example, say I have this code in the file `birthyear.py`:

```python
age = input("How old are you? ")
birth_year = 2020 - age
print(birth_year)
```

There's a mistake in there, but it could be hard to catch. Say we run this code using the `-i` tag:

```
miles@MilesMacbook Desktop % python3 -i birthyear.py
How old are you? 22
Traceback (most recent call last):
  File "birthyear.py", line 2, in <module>
    birth_year = 2020 - age
TypeError: unsupported operand type(s) for -: 'int' and 'str'
>>> age
'22'
```

You can see that I am able to check variables and see what the problem is. Of course, the error message here tells me that I was trying to subtract a string from an integer, which is a no-go, and I can confirm that age is in fact a string since it's in quotes when I type it.

---

## Special String Features
We've talked about how strings have some unique things going on:

- Convert just about anything to a string using `str()`.

- The `.lower()` method (and you can guess that there is a `.upper()` method too).

- The `.isdigit()` method, which returns `True` only if all the characters in the string are digits.

- Concatenation (adding one string to the end of another) can be done using `+` between strings.- 

Here's a few new things:

- Some characters can't be typed directly. For example, if you want to store the string `"Owen said, "Wow""`, typing it just like that will not work and will crash the program. That's because it doesn't know we want everything inside the first and last `"` to be included, including `"Wow"`. The way to escape this problem is to use the escape character: `\`. This is used to include things you can't explicitly type in a string. Therefore, typing a quote within a string can be done using `\"`. So we can type `"Owen said, \"Wow\""` instead, and when we print it, it will look just like `Owen said, "Wow"`. Other important examples are `\n` to make a new line (basically like hitting enter on a word doc) and `\t` for tab.

- A string can be repeated using `*`.  Ex: `"at" * 5` evaluates to be `"atatatatat"`.

- Remembering the fact that computers always count from zero, you can find the index of the first occurrence of a substring using the `.index()` function. Ex: `"Hello".index("e")` returns an integer `1`. If there are no occurrences of the substring in the string, then an error occurs and the program crashes. Ex: `"Hello".index("h")` causes the program to crash.

- If you want to find what a character is at a specific index, use `[]` after the string/variable, and put the index or index range in the brackets. Ex: `"Hello"[1]` returns the string `"e"`, and `"Hello"[0:4]` returns the string of a word my mom says I'm not allowed to say. Note that when you use a range like that, it's in the form `[<Start Index>:<End Index>]`,  where it includes the character at `<Start Index>`, and everything up to *but not including* `<End Index>`.



**Example code**: Below, if the user types `"an"`, then the program will print `8`.

```python
phrase = "This is an example phrase."
response = input("What character/substring do you want to know the index of? ")
print(phrase.index(response))
```

Take hope in knowing that integers and floats do not have the same level of complexity.

---

## To Do Before Next Time

> *To Do*: Complete the following project before next meeting and turn it in on Canvas.

### Project: Create a program that will ask the user for two strings, and then take every occurrence of one out of the other.

Ask for a phrase from the user. Then ask the user for a substring to remove from the phrase. Example: If the phrase is `"Yeah, I'm gonna take my horse to the old town road I'm gonna ride 'til I can't no more"` and the substring is `"I'm gonna"`, then the program will print out <code>"Yeah, &nbsp;take my horse to the old town road  &nbsp;ride 'til I can't no more"</code>. Note that there is a double-space remaining where the string was removed in this example, and that is okay. Here are some things that can help you:

- **The `len()` function**: This simply takes a string and returns its length (aka its number of characters). For example, `len("hello")` returns `5`.

- **The `while` loop**: This is another really fundamental idea of programming. It will probably remind you of `if` statements, just repeated. Using `while` followed by some boolean value means that all the code indented below it will be run again and again until the boolean value is false. Here are some examples:

    Below, the `while` loop content (in this case, that's just line 4) runs three times before moving out of the `while` loop. That means that at the end of the program, `counter` is equal to `3`. 

    ```python
    1  counter = 0
    2  
    3  while counter < 3:
    4      counter = counter + 1
    ```

    To understand the above code best, I'll try to explain what the computer is thinking in a lot of detail (jk it's not thinking, but you know what I mean): 

    1. `counter` is created, and set equal to `0`. 
    2. The program checks if `counter` is less than `3`, which it is, so the while loop is entered, running line 4. 
    3. `counter` becomes its current value plus `1`, or in other words, `counter` increases by `1`. Now, `counter` is `1`.
    4. All the code within the `while` loop has been completed, so the program knows to go back to line 3.
    5. On line 3, `counter < 3` is still true. Since it is, the `while` loop is entered.
    6. `counter` is again incremented by `1`, so it's now `2`.
    7. All the code in the while loop is completed, so back to line 3.
    8. `counter` is still less than `3`, so the `while` loop is entered.
    9. `counter` is again incremented by `1`, so it's now `3`.
    10. Again, all the code in the `while` loop is completed, so back to line `3`.
    11. Now, `counter` is **not** less than `3`. This means the `while` loop is not entered. The program skips the `while` loop to see if there is any more code to run. It sees no other code, so the program terminates.


    Below, the while loop isn't entered at all since the initial condition is false right off the bat. That means that at the end of the program, counter is still equal to 0.
    
    ```python
    1  counter = 0
    2  
    3  while counter < -1:
    4      counter = counter + 1
    ```
- **A few hints & tips**:

    - I would recommend reading these one at a time, and trying to work on the program until you need another boost of help.

        - Write out a plan for yourself on how you could instruct an idiot named Ted to figure this out. After that, try to put that into code. This process is called "pseudo-coding": you write the steps out first and then put it into code.

        - Use the repl a lot to test things quickly so you don't have to keep saving and running the program over and over. This is much more of a puzzle than last time, so there's lots of testing to do!

    - As far as functions and other tools go, it is possible to get this done using only `input()`, `print()`, `.index()`, `while`, square brackets `[]`, `in` and `len()`. And of course some variables.

        - Don't worry about making the program case-insensitive (aka don't worry about using `.lower()`). Assume the user wants everything to be case-sensitive, so you can leave everything as-is.

    - There's a special feature of using the `[]`: if you want to return everything up to a certain index, or everything beyond a certain index, you can! Let's say `phrase` is `"wow cool"`. 

        - Then `phrase[:3]` (note the omission of the start index) is `"wow"`. 

        - Also, `phrase[6:]` (no ending index) is `"ol"`. 

        - As you can see, if you want to include the characters up to the beginning/end index, you just don't type anything for that index. 

        - So, if you wanted to remove the characters `"oo"` from that string, you can say `phrase = phrase[:5] + phrase[7:]`.

    - Using `in` can help you see if the substring is in the phrase. This would be a good condition to base the `while` loop off of.

    - If you don't think the right thing is happening in each pass of your `while` loop, try printing the phrase within the `while` loop to see how it is updated with each pass.

    - `.index()` will find where the first substring is. Use this and `len()` to find the index range that the substring is within the whole phrase.

    - *(Big hint: avoid reading unless you're super stuck)* Remember that `.index()` can find only the first occurrence of the string at a time. Therefore, it might make sense inside the `while` loop to remove the first occurrence of the substring. That means that the next time around, it won't be there anymore, and the next one can be removed until that substring isn't there any more.

    - *(Pull-it-all-together hint: again a biggie.)* Here's some pseudo-code that I came up with for this project: First, ask the user for a phrase using `input` and store it in a variable called `phrase`. Second, ask for the substring using `input` and store it in `substring`. Third: as long as `substring in phrase` is true, then update phrase to be the following: `phrase` up til the first occurrence of `substring`, plus everything in `phrase` beyond the first occurrence of `substring` + the length of `substring`. That will loop through until all the occurrences of `substring` have been removed. Finally, print `phrase` to see the result.

    - If you're still stuck, don't worry! Reach out and I'd be happy to help you out.

