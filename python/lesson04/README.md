
# Lesson 00

## Contents
- [For Loops](#for-loops)
- [Practice](#practice)
- [To do before next time](#to-do-before-next-time)

---

## For Loops

This is another loop, similar to `while` loops, but a more specific approach. You may have noticed in some of the little examples in the past few classes that we used a counter to keep track of how many times the `while` loop was run, and that feels kinda dumb to do it that way. `for` loops are awesome because you redo a piece of code a **specified** number of times.

Say you wanted to add all the numbers from `1` to `100` with code. There's an easy formula to figure it out, but we'll do it in code for good practice. Then, using pseudo-code, we might approach the problem like this:

```
make a variable called sum and set it equal to zero
add every number from one to a hundred to sum
print sum
```

We can convert this pseudo-code almost line-for-line to python code:
```python
sum = 0

for number in range(1,101):
	sum += number

print(sum)
```
A few things to notice here:

- In the second line, we name a variable that I called `number`. It can be anything, but this variable will now take on the numbers from `1` to `100`.

- The `in` keyword here is a little different than normal. Normally, `in` returns a boolean as we've seen before, but this is a rare case where it has an alternate meaning/function. Since the word `for` is there, the word `in` actually is kinda part of the whole shebang here. In the next few points, I'll describe what that second line is saying as a whole.

- The `range()` function is really nice. It accepts an integer or integers, and returns a `range` object. We talked about objects briefly last time, but for now, just think of a `range` object as a list of integers. Note that I said `1` to `101`, and that's because it doesn't include the last number you put in, just like the `[]` for ranges of indexes in strings. If I wanted to have a list from `0` to `99`, I could do `range(0,100)`, or even easier, `range(100)`. Huzzah for simplicity.

- All together, the second line of our code is telling us this: Repeat the code indented below over and over, each time with the variable number taking on the next value of `1` to `100`, until `number` has completed being all of those numbers.

---

# Practice

Give these a shot using only things we have learned so far. Some of these might require some out-of-the-box thinking, and others will feel needlessly complicated for being such simple concepts. But that's just how it do be sometimes.

To start, some of these problems require big amounts of text, which sucks to copy/paste and sucks even more to type. To avoid that, I've made practice files in the github repository in .txt documents, linked for a few of the situations below. To access them, use the built-in `open()` function. If you put the file in the same place as your python script (ex: both the files are on the desktop), then you should be able to open it by saying `file = open("file.txt")`. Get all the text as a string by saying `string = file.read()`. When you're done, at the end of your script, it's good practice to add `file.close()` to close the document, even though in many cases you can get away without it and not hurt anything. Your computer can only handle so many open files at a time, so be nice and try to remember to close your files.

We'll take a good chunk of time trying to come up with solutions to the following problems:

1. You want to replace the word `"yum"` with `"eczema"` in a document, but also make sure that `"yummy"` gets changed to `"serious case of"`. How would you do it? [Here](text_files/ex1.txt)'s a document you can try.

2. You copy-paste a huge document from a pdf to a text file and it's added three spaces, sometimes four, everywhere there should only be one space. How could you fix that with a python program? [Here](text_files/ex2.txt)'s a practice file.

3. Your four roommates have a text file they use as a sign-in sheet for every time they use your fancy blender, which cost more than your laptop. You know that jerk Chad has used it at least 200 times but you don't know how many times he's actually signed in. How would you count the number of times each person used it? Try it with [this](text_files/ex3.txt) practice file.

4. You have a phrase that you want to make look sarcastic by alternating capital and lowercase, without having to actually type it yourself. How would you write a program that could take a phrase and print it out with every other letter capitalized?

5. You want to make a secret code where every letter of the alphabet is connected to its "code" letter. How would you make a program that would "encode" and "decode" messages? If these two lines are used, then `a` would be `q`, `b` would be `a`, etc. An example would be that `hello` would be coded to say `dsrrb`.

```python
normal = "abcdefghijklmnopqrstuvwxyz"
encode = "qazxswedcvfrtgbnhyujmkiolp"
```

6. You have two files. One is a dictionary, basically, and another is a paper you wrote late at night while you were dozing off. How can you make a program that will check which words in your paper are in the dictionary and which ones aren't? Here's the [dictionary](text_files/dictionary.txt) and your [late-night paper](text_files/ex4.txt).

## To Do Before Next Time

> *To Do*: Complete the following project before next meeting. No submission necessary.

### Project: Try out the rest of the exercises above on your own. No need to submit, just let me know if you run into any bumps.