
# Lesson 00

## Contents
- [Brief history of computing](#short-history-of-coding)
- [Basic coding logic example](#basic-coding-logic-example)
- [Programs to install/be aware of](#things-to-install-or-be-aware-of)
- [Basic python functions and features](#basic-functions-and-features)
- [Python file example](#py-file-example)
- [Data types & basic ideas](#data-types-and-basic-ideas)
- [To do before next time](#to-do-before-next-time)

---

## Short History of Coding
In the 1600's, the term 'computer' referred to a person who completed calculations. When machines were built to complete basic calculations, they were called computing machines. Of course, eventually we stopped calling them machines, but the basic concept has stayed the same. With the right amount of time and knowledge, a human can do the same thing that a computer could do. In fact, early computers were not much faster than humans. In these days, the only real differences between a human doing work on pen and paper and a computer is *speed* and *accuracy*. In general, it is my opinion that if there is anything that I need to do that makes me role my eyes, a computer could do it faster and I can feel powerful and take responsibility for its achievements.

<img src="imgs/computer.jpg" alt="Some lady" width="200"/>

*Some lady who might be what a computer looked like, but she's probably way dead now*


Charles Babbage is credited to have designed the first significant computing machine. In 1830s-era war, artillery machines would be so sensitive to slight angles that a fraction of a degree or a mild draft could make you miss a target by a big margin. Huge logs were kept to outline what angle and direction should be used for a given set of conditions, but one small change in the artillery design meant they had to start over from scratch and make a new log, experimentally determining what angle would be best under loads of different conditions. This sucks. Charles Babbage devised a machine that would function for "general purposes", could store a bit of information, and even had a primitive printer. But yeah, that didn't end up going through, and he abandoned the idea for a simpler one. People built it later based off of his plans though, and it totally worked.

<img src="imgs/analytical_engine.jpg" alt="Babbage's machine" width="200"/>

*Here's Babbage's machine. Also doubles as an egg slicer.*


If Babbage was the world's first computer engineer, Ada Lovelace (a mathematician) was the world's first computer programmer. She devised a set of instructions that could be given to Babbage's machine that could instruct it on computing numbers. This is seriously good stuff, cuz people had been giving instructions ever since growing babies and idiots appeared, but never had there been a bigger idiot in the world than this machine. No amount of saying "do you get it?" helped Lovelace explain her thoughts. She had to explain them with a huge amount of precision. What she did was invent an algorithm. Again, not the first to do that, but the first to do it for a machine computer.

<img src="imgs/ada_lovelace.jpg" alt="Ada Lovelace" width="200"/>

*Ada Lovelace stored most of her intelligence in her excessively large side-buns*

Early electrical computers were literally hard-wired. Programming a machine that added numbers would literally be something akin to this example (though it may be totally different, I'm BSing things here):
```


       receive two numbers



               ↓



 take the first place digit of each 

     and send it to a logic gate



               ↓ 

LOGIC GATE:

   Compare the number to 10.

-----------------------------------

    (<10)      |       (≥10)  

-----------------------------------

set this to be |  add 1 to ten's

first place of |  place calculation

answer & go on |     & go on


```
If you wanted to do a different calculation or algorithm, you'd have to literally connect wires in a different way.

Later, the US census started to be a real pain. The 1880 census took freaking seven years to finish calculating after collecting the data, and that wasn't worth crap by the time it was done. The problem was that so many babies were being made by these horny Americans that calculating by hand was no good. So the US asked Herman Hollerith to figure something out. He introduced a punch-card system that provided a clear way to give a machine information and have it return something as well. These punch cards were used for a hecking long time as a way to communicate with computers (input/output). This cut calculations for the 1890 census down to 2.5 years. And this dude went on to make a "machine tabulating" company, which later became freaking IBM.

<img src="imgs/herman.jpg" alt="Herman" width="200"/>

*Herman boi with his herman toi*

IBM itself a long time later (1944) made a huge room-size computer called the "Harvard Mark I". It included 500 miles of wire. It could only do one division problem every 15 seconds, which is worse in calculation speed than most anti-vaxxers, so it was really bad.

<img src="imgs/harvard.jpg" alt="Harvard Mark I" width="200"/>

*The Harvard Mark I computer*

Obviously, with better hardware things got better, blah blah blah. Now I'm able to do stuff like wirelessly watch & not understand youtube videos of someone explaining the Higgs Boson at 2 in the morning.

---

## Basic Coding Logic Example
Imagine you meet someone who can follow instructions but can't reason for themself. Call them Ted. How would you explain to Ted how to figure out someone's name? You could just say "Figure out their name", but Ted is an idiot despite the fact that he totally put his pants on all by himself without needing any help. You'd have to be very specific. Your instructions might be this:



1. Say the words "What is your name?"

2. Wait until they speak and then stop speaking.

3. Whatever they said, write that down. Within yourself, refer to what you wrote down as 'name'.

4. Say the words "Nice to meet you" and then say 'name'.

5. Promptly walk away, and do not tell them about how you put your pants on all by yourself.



It's tedious to work with Ted, but you know exactly how it will go, assuming your instructions were clear enough for him.

---

## Things to Install or Be Aware of

Below and throughout this tutorial, you'll see portions of the document that look like this:

> *To Do:*

These quotation blocks are the things that are recommended to complete as you are reading along. Note that some are divided by operating system (OS), and will say what Windows users and Mac users would do.


### Introduction to the Terminal

Using the terminal was the OG way of communicating to your computer. It is both more powerful and less intuitive, which makes it doubly intimidating for beginners, but you'll do great after some practice. Follow the instructions below to get your terminal open (this will also help you get ready to use Github, which we'll discuss later):


> *To Do:* Set up terminal
>
> **Windows**
>
> There are two ways to handle this. Windows comes with PowerShell (or Command), but it is notoriously difficult to use. It is preferable to install a new terminal first, for your own sake. Click on [this link](https://git-scm.com/download) to install something called 'git' for Windows. This will also install another program that will be useful later.
>
> When you install, there will be lots of options it gives you, but it is best to just go with whatever is pre-selected and continue onward til it installs.
>
> Once installed, hit the Windows button on your keyboard and type "git bash". The newly-installed program will appear on the screen. Read on below to see how to handle this.
>
> Note: keyboard shortcuts for copy & paste are different than normal for this terminal.
>
> **Mac**
>
> The terminal that comes with Mac is pretty darn good. To open it, you can hit Command + Space and type "terminal", then hit enter to open it.
>
> To get access to some important tools, you may need to install the Developer Tools. To do this, type "git status" and hit enter in your terminal. If it prompts you to install the developer tools, do so. Once it is complete, close the terminal, open it again and type "git status" again. It should read `fatal: not a git repository (or any of the parent directories): .git` if it was successful.

Before we dive into what it is we're seeing in the terminal & what we can do with it, let's define some terms and concepts:
 1. The words *directory* and *folder* are synonymous.
 2. The content stored on a computer is just files, all organized into folders. If you keep going up a folder, eventually you can't go up any more. This is called the *root folder*. In Windows, the root folder is generally called `C:`, whereas Mac just uses a single slash: `/`. This folder contains all other folders and files on your computer, no matter your OS.
 3. A *path* is a written phrase that says how to get to a folder or file from the root directory. For example, if I have a file on my Windows' desktop called `pictures_of_lizards.docx`, then its path would be `C:\Users\miles\Desktop\pictures_of_lizards.docx`. This shows the series of folders to go into to find the file.

Back to the terminal. First thing to understand is the words & characters you're seeing. It looks a little different between Windows and Mac, but the basic ideas are the same. I'll talk about what my Windows terminal looks like:

```
miles@Mindows MINGW64 ~
$
```

The stuff listed here has some meaning, and it is nice to know what it is instead of treating it like an amorphous blob of fear. 
- First is the user: `miles`. This is the name of the profile I logged into when I turned on my computer and put in my password. 
- The `@` points to where that profile is logged into, which is `Mindows`, the name I gave my computer. Yours will look different, and might be random numbers and letters instead. 
- Next, `MINGW64` is a program required to get git bash to run on Windows (aka Mac users won't see this in their terminal). 
- Next is `~`, which means "home directory". The home directory is the folder that contains your Desktop folder and Documents folder. In my case, my home directory is at `C:\Users\miles\`. The fact that the `~` is there means that the terminal is currently looking at my home directory, which is the default when you open the terminal.
- The `$` just shows where you'll be typing commands.
- If you were to hit enter (or type a command and hit enter), this same block of information will reappear, prompting you to enter another command until you close the terminal.

Now let's try to learn a few commands to use. I'll go over a few examples and then type out a more comprehensive list of examples.

> *To Do:* Use `pwd` command
>
> Open your terminal. Type `pwd` and hit enter. `pwd` is short for "print working directory", or in other words, "tell me which folder I'm currently in by putting it on the screen". If you're on Windows, you'll see something like `/c/Users/[your username]`, whereas Mac users will see `/Users/[your username]`.
>
> *Note for Windows users:* What the terminal says is equivalent to `C:\Users\[your username]\`, which is the "true" way to type your home directory. Windows for some reason decided to use the `\` slash, even though every other operating system in to world uses the `/` slash. Good news is, Windows will understand either slash, whereas Mac (and Linux) only understand `/`. So your git bash terminal is trying to make you feel more part of the group by using `/`, and took the liberty of changing `C:` to `/c` while it was at it.

You've seen that you're in your home directory, but it would be pretty lame if the terminal could only look inside the home directory. Let's change the location the terminal is looking at using the `cd` command:

> *To Do:* Use `cd` command
>
> `cd` simply means "change directory". Type `cd Desktop` and hit enter. You may be prompted to give your terminal permission to access your desktop. Accept if so.
>
> If the command is successful, you'll notice the following prompt of the terminal looks slightly different, now telling you that instead of being located at `~` (home folder), you're at your desktop.
> 
> Return to your home directory by typing `cd ~` and hitting enter.
> 
> Now, while in your home directory, type `cd De` and hit tab. Note that it autocompletes to say `cd Desktop`, since `Desktop` is the only folder in your home directory that starts with the letters `De`. This is pretty darn helpful.
>
> Leave your terminal open.

You'll notice here that unlike the `pwd` command, the `cd` command takes an *argument* after it. An *argument* is information that a command accepts that helps specify what you want to do. In this case, the argument for `cd` is simply the destination you want to go to.

*Note:* `cd` can be used without any arguments, but it is equivalent to saying `cd ~`.

Now, it's nice that the terminal is saying that it is in the Desktop, but that's not very useful on its own. We'd now like to look at what files and folders are in the desktop.

> *To Do:* Use `ls` command
>
> The `ls` command lists the contents of the current directory. While in your Desktop, type `ls` and hit enter. Check out what you see there, and compare it to what you see on your actual desktop.

This is a very limited view of the power of these commands, but that's how it do be when you're just starting.

### Terminal Commands Overview

Now, here is the list of commands we've covered and some other useful ones:
- `pwd`: Prints the path location of the terminal to the screen
- `cd [folder]`: Allows the change of the directory the terminal is looking at
- `ls`: Lists all the files within the current directory
- `touch [file name]`: Creates a new blank file
- `mv [file name] [file destination]`: Moves a file, and can change its name while doing it
- `cp [file name] [file destination]`: Copies a file, and can change its name while doing it
- `cat [file name]`: Among other things, can be used to print the contents of a text file to the screen

### Python & VSCode Installation

Now let's actually install python and, you know, do the stuff.

> *To Do:* Check if you already have Python
>
> **Windows**
>
> Open a terminal. Type `python -V`. If the result is an error, or is something less than Python 3.2.x, proceed to the next step. Otherwise, skip it and jump to installing VSCode.
>
> **Mac**
>
> Open a terminal. Type `python3 -V`. If the result is an error, or is something less than Python 3.2.x, proceed to the next step. Otherwise, skip it and jump to installing VSCode.
>
> *Note:* The reason Mac users have to throw a `3` on the end there is because all Macs come with a very primitive version of python, denoted by just `python` in terminal. That version won't do for us, so we specify that it is version 3 or later.

> *To Do:* Install Python
>
> **Windows**
>
> Visit python.org, mouse over "Downloads", and click the button that says "Python 3.9.6" (or whatever numbers it says). Proceed to open the thing that was downloaded, **making sure** to click "Add Python 3.9 to PATH" on the first screen before proceeding through the installation. The rest of the settings are fine as-is.
>
> Verify the installation was successfull by typing `python -V` in the terminal.
>
> **Mac**
>
> Visit python.org, mouse over "Downloads", and click the button that says "Python 3.9.6" (or whatever numbers it says). Proceed to open the thing that was downloaded and accept everything it says, no need to change any default settings.
>
> Verify the installation was successfull by typing `python3 -V` in the terminal.

Now, you've got python on your computer. What does that mean? That means that you can make text documents that contain python code, and if you give them to this python program you've installed, it will convert the code to 1's and 0's and do what you tell it to.

Now, as you may have been thinking, the issue is now knowing what code to write. You may even be worried that you're going to break your computer if you put the wrong thing into that text document. Technically you're right, but you'd have to be trying to break your computer. So your real worry is errors in your code that cause you to waste your time.

One quick way to check your code for errors is by using something called an IDE, or an integrated development environment. Simply put, IDE's are text editors (think Notepad or TextEdit) that can show mistakes in your code in real-time.

There are many IDE's, none of which are necessary but all of which are helpful. My favorite (and the simplest) is VSCode:

> *To Do:* Install VSCode
>
> **Windows**
>
> Visit Visual Studio Code website (linked [here](https://code.visualstudio.com/#alt-downloads)) and download VSCode for Windows. Note the settings about making desktop shortcuts etc if you want to change those settings.
>
> **Mac**
>
> Visit Visual Studio Code website (linked [here](https://code.visualstudio.com/#alt-downloads)) and download VSCode for Mac. Move the app to your Applications folder if you like.

> *To Do:* Install Python extension for VSCode
>
> Open VSCode. On the left hand side, click on the last icon (it looks like building blocks). Search for Python. Install the first extension there, the one that is just called "Python".

---

## Basic Functions and Features

<img src="imgs/python.png" alt="python logo" width="200"/>

Finally, we're actually going to do someting in python. To start, we'll play around with some basic python features.

To learn python basics, we're going to use a fast, interactive version of python. A *function* is a piece of code that performs some action. It often has input and/or output, but not always. I'm going over this in a lot of detail because despite what you may think with your coding experience, coding is an exact science and is not some hogwash magic force. I promise.

> *To Do:* Open python's interactive version (REPL)
>
> Go to your terminal and type `python` (or `python3` for Mac users) and hit enter. You'll see the terminal looks a little different, and now has >>> instead of the computer information.
>
> Read on and use this terminal window to play around with the following examples. See what you can gather is occurring with each example, and try to focus on demystifying your confusions with experimentation. When you're done, type `quit()` and hit enter to return to the normal terminal, or hit x to close the 

We'll do some input/output examples. Pay attention to what is *given* to each function and what each *returns*.

1. The `print()` function:

    This function will take whatever words in quotes you give it and put it to the screen. The code `print("Hello World")` puts `Hello World` on your screen when you run it (try it!).

    This is the most basic way of communicating to a user. Its 'input' (or argument) is just words in quotes, and its output (return type) is *nothing*, as it actually just performs an action. This will be explained in more detail later.

2. The `input()` function:

    This function will give the user a chance to type something. If you write `input()` in a program, the user will get a cursor, where they can type something and then press enter.

    This function is even easier than I let on, because if you want to give the user instructions, you put them in quotes inside the function and it will automatically print that for you. Therefore, its argument is words in quotes, and it actually returns the words that the user responds with.

    Example: running `input("Why are you dead inside? ")` will give the user a screen asking that question. If they type Coronavirus, then the input function actually *returns* Coronavirus.

3. The `=` operator (assignment):

    If a function returns something, you can imagine that we'd like to store that information somewhere. The `=` sign gives us a way to store information in a *variable*, where it can be later accessed.

    If we run `variable_example = input()`, this tells the computer to 1) ask the user for input, 2) create a variable names `variable_example`, and 3) store what the user typed and the user types `Oprah did 9/11`, then `variable_example` now has a value of `Oprah did 9/11`.

    It's more helpful to think of `=` as a way to *store* something than as an equals sign. "Equals" in math doesn't care which side is which, whereas with the assignment operator, the variable goes on the left, and the thing that gives the info you want storing goes on the right. In python, the way to test if one thing has the same value as another, you use double equals sign (`==`), which is much closer to the mathematical equals sign than the assignment operator `=`.

Other things:

- `+` works just like normal for numbers, as does `-`, `/`, and `*`.
- If you want to find the remainder of dividing two numbers, use `%` (called modulo arithmetic).
- Both single-quotes and double-quotes work essentially the same, just don't mix and match.

---

## .py File Example

Now, let's put the pieces of what we learned together and try to make a python file. These files have the extension `.py`.

> *To Do:* Make a python file
>
> On your desktop (or anywhere you'd like), make an empty folder. Open VSCode and use the tabs at the top to open the empty folder in the program. You'll see that its name now appears on the left-hand side of VSCode. Mouse over the folder and click the button that will create a new file. Name this file `first.py` and open it by double-clicking. It will be empty.
>
> In that empty file, type the following:
> ```
> name = input("What is your name? ")
> print("Nice to meet you", name)
> ```
> 
> Save the file with Ctrl + S (or Command + S for Mac users). Run this program by pressing the green arrow in the top right corner. If everything works out, it will appear in a terminal in the bottom half of the screen. You'll see the words "What is your name?" where you can type something, and then hit enter to see what the program produces.
>
> Note that in this example, the `print` function takes two arguments, separated by a comma. Since "Nice to meet you" and name are both words with quotes (`name` is a variable storing words with quotes, which is the return value of the `input` function), then this works just fine. We'll chat about this more later.

---

## Data Types and Basic Ideas

There is a reason people call them "computer languages". This is literally the way we communicate with computers. Just like English, computer languages have the equivalent of conjunctions, verbs, adjectives and just about everything else. However, computer languages almost always intend to get something done with their use, whereas in English, there's lots that is just said to be said.

You can imagine that you have to be really specific with computers. If you're trying to talk about the character "1", that would be different than the number 1. Computers use a few different ways to differentiate data:

- *Strings:* These are what I have been calling "words in quotes". If any characters are between a set of quotes, it is considered words and is stored as words.
- *Floats:* These are decimal numbers.
- *Integers:* duh.
- *Booleans:* These are things that either have the value True or False.

There are others, but these are the basic ones that matter.

Python also includes "key words", which are words that have special meaning when typed in a python file. Here are some examples:
- `and` and `or`: These are used to join two boolean values into one.
- `if`, `elif` and `else`: These are explained below, as is `in`.

---

## To Do Before Next Time

> *To Do*: Complete the following project before next meeting and turn it in on Canvas.

### Project: Create a short dialogue program.

Make a program that allows for a short & simple conversation with a user. Here are some things that can help you, with each topic bolded below:


**Run a piece of code on a condition.** This is hugely useful as you can imagine.  Simply type `if` followed by something that will be either true or false, then a colon. If you have an alternative case, type `elif`. If you want a catch-all for everything that doesn't fit, type `else`. Anything that is indented below any of these three things will be run only if the condition is true. Here's an example:

```
1  user_input = input("Type your favorite color between blue and red. ")
2  if user_input == "blue":
3       print("Your favorite color is blue.")
4  elif user_input == "red":
5  	    print("Your favorite color is red.")
6  else:
7  	    print("You're really bad at following instructions.")
```
I numbered this chunk of code to point out a few things:

This is called an `if`/`else` block for obvious reasons. In this case, line 2 checks the case that `user_input` is "blue". If this is the case, then line 3 is run, and lines 4 thru 7 are completely skipped since a condition in the block had been fulfilled.

If you were to replace `elif` with `if` on line 4, then in the situation above where `user_input` is indeed "blue", the computer would run line 4 instead of skipping it.

If you wanted, you don't need to have `elif` or `else` involved at all. That would of course depend on your situation.



**Convert a user input string to all lower-case.** This one is pretty simple. You'll notice that in the above example, if the user types Blue, then the program would not run line 3 since it is a capital B. That's kinda dumb. So instead, you might want to check if the lower-case version of `user_input` is "blue". That would catch the situation where the user types Blue, or even BLue or BLUE. You can do this if you change line 2 from above to read like this:

```
2  if user_input.lower() == "blue":
```

**Check to see if a single word is in a string.** I'm guessing you'd want your program to be flexible, within reason. If a user typed My favorite color is red, it would be nice if that still worked. Or maybe a user accidentally types a space at the end of their input, like `blue `. There's a *key word* that can check if a string is inside another: `in`. Using this word will act like a function with two arguments (checking if one is inside another), and will return a boolean value. Here's an example of what it would look like if we just wanted to check if the word "blue" was anywhere inside what your user gave you, again applying it to line 2:

```
2  if "blue" in user_input:
```

Combining all the suggestions above, the original program might look like this:

```
1  user_input = input("Type your favorite color between blue and red. ")
2  if "blue" in user_input.lower():
3  	    print("Your favorite color is blue.")
4  elif "red" in user_input.lower():
5  	    print("Your favorite color is red.")
6  else:
7  	    print("You're really bad at following instructions.")
```