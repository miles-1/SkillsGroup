
# Lesson 02

## Contents
- [Review](#review)
- [Python Docs](#python-documentation)
- [To do before next time](#to-do-before-next-time)

---

## Review


- There are many things that can effect code negatively. The most severe are **syntax, run-time and logic errors**, but **convention** can be really important for code readability.

- The command line is a simple & powerful tool to do a lot of things, including the python repl, which is great for experimentation.

- Strings have a lot of special methods that integers, floats and booleans don't have.

- The length of something (often a string) can be found with `len()`

- The index of a string can be found with the `.index()` method

- Parts of the string can be accessed by slicing with `[]`

- The `while` word is used like an `if` statement that repeats until the condition changes

The format of this class is to first see the basics of the language and then to see them in application. After just a few more topics, we will be able to jump into some real-life problems. This will help you start thinking like a programmer and approach coding problems in a more systematic way.

## Python Documentation
*Note: this section might seem intimidating. Don't worry! I'm introducing something hard now so it can be helpful to you as you learn. Don't worry about everything you read in documentation, this is just to get familiar with how to pick out the stuff you need.*

A quick story: I recently learned how to change the oil in my car. Turns out that the car has no idea that you've changed the oil, and the light actually just turns on after some number of miles. I googled how to turn off the change-oil light and it didn't work. So, I opened up the user's manual for the car, which I normally hate looking at since very little makes sense. But I looked up the right section and it told me to do something like turn on the car, press the break three times, turn off the engine, honk the horn and spray the windshield or something dumb like that. I did it, and lo and behold the light turned off. This is exactly like python documentation: you know all the parts, like pressing the breaks and honking the horn, but you might not know how to put them together to do what you need to do, but you can turn to the user's manual and figure out how to do it.

So, where do I get this documentation? Of course there's millions of tutorials online on how to use python and stuff, but people take a lot different approaches to coding, and lots of people online have weird opinions that can lead you astray. It is better to refer to built-in documentation than just some blogger online. I realize that I am essentially just some blogger, so consider this my official declaration to trust the documentation more than you trust me with coding.

There's a lot to keep track of with all the stuff going on in python. An awesome way to keep track of stuff is using the `help()` function in the repl. You can use this function on any other function, and also on any key word and any data type. What it returns to you is a huge list of information regarding the thing you asked about. It spills out a lot of information, but it can be faster than googling things, and doesn't run the risk of giving you false information like some rando on the internet would. Don't get me wrong, I still google coding things daily, but I usually go to the documentation first. The user manual does a good job.

**When you use the help function on something in the repl, it will look like it takes over the command line interface. To navigate, just hit enter (Mac users can also use arrow keys/scroll).  To exit out of help statements and return to the repl, type `q`.**

- First, type `help(input)` to get documentation for the `input` function. The documentation for this is pretty short compared to some, which is good news cuz I hate reading. In most cases, only the first two lines or so usually answers the questions you have, and the other ones just give more detail. Look where it says `input(prompt=None, /)`. Ignore the `/` here, it does mean something but it's mostly semantics and can be ignored. Otherwise, this line tells us there's only one argument, `prompt`. The fact it says `=None` means that if you don't give anything to the function, it just makes `prompt` be `None` and nothing is printed. It says that you can give a prompt for the user, but if you don't, there's just a blinking cursor for the user to type something. Not much else to see here.

- Now, type `help(print)`.  This one is a little more complex. It turns out that this one has more flexibility. Let's talk about the arguments one at a time, looking at the line `print(value, ..., sep=' ', end='\n', file=sys.stdout, flush=False)`.

    - `value` is the argument we've been using all along. Whenever you have given a string to the print function, it has stored that string in its argument variable `value` and used that to print it to the screen.

    - `...` simply refers to the fact that you can put in more strings separated by commas. Obviously three periods isn't a variable name, so this is just suggesting "you can put more crap here without limit".

    - `sep` is an argument that says how you want to separate the strings in `value` and `...`. Note that it already says `sep=" "`. What that means is that if you don't put anything for `sep`, then it will assume you want a space. So, for example if you run `print("1","2")` in the repl, you'll get `1 2` on the screen, since by default it will add a space. If instead you type print`("1","2",sep="wow")`, you'll see it instead says `1wow2` on the screen. All in all, I have never used this argument, and even though it's not too complicated, I mostly ignore it.

    - `end` is a very helpful argument. You may have noticed that if you have two `print` statements in a row, they'll be on different lines. This is because by default, `end` has the value `\n`, aka the new-line special character we learned last week. So, if we wanted to print two things back to back without making a new line between them, we could do `print(thing1,end="")` and then `print(thing2)`. Just think of this `end` argument as the `print` function slapping on an extra character on the end of the thing you're printing.

    - The other two (`file` and `flush`) don't matter to us for now, so go ahead and ignore them.

- Now, type `help(str)` in the repl. There's lots going on, but we'll try to look at some specific things:

    - First, it gives a short description of the `str()` function.

    - There's lots of bolded words underneath. These are all methods, so this will include ones you already know, like `.lower()` and `.isdigit()`. But first, you'll see a ton of them with double underscores. When a method has double underscore, it is called a **dunder** method, because that's a quaint thing to say. These dunder methods are here to represent operations that are technically methods for strings, but are just coded a different way. We won't get too deep into these yet, but let's look at an example real quick:

        - The `__add__` method: This is talking about using the `+` symbol between two strings, aka concatenation. Here, it tells us that the arguments are just `self` and `value`. We'll get into why `self` is there later, but just know that is never an argument you actually type into the method, and is really just referring to the string you're calling the method on. There's only seemingly two other arguments, but the `/` isn't actually indicating an argument, and we're going to ignore it for now. In reality, the only argument shown here is `value`, aka the string that you're concatenating with the first. What this information is telling us is that when you're concatenating strings, you really can't get more complicated than just adding strings together. What this tells us is that when we're typing `"first" + "second"`, what is actually run in the background is `"first".__add__("second")`. 

        - Don't worry about the deets here yet, I just wanted to show you what these dunder methods are there for. Other ones are there for `*` and `[]` as well (where `*` is `__mul__` and `[]` is `__getitem__`), both of which we've seen can be used on strings.

    - Go look at `lower`, `upper`, `index`, and `isdigit` to see the documentation on these methods (Note: if you wanted the `help` function to only pull up the documentation for `lower`, you could call `help(str.lower)` and that would work).

    - Now, look for the `replace` method. This is a quick version of what you coded in last week's project. We could rewrite your project like this:

```
phrase = input("What is your phrase? ")

substring = input("What is the substring you want to remove? ")

print(phrase.replace(substring,""))
```

It is likely that something very similar to the code you wrote in your project is exactly what is going on in the background for the `replace()` method.

## To Do Before Next Time

Nothing :)

