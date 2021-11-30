# Reference Sheet
Here is a reference sheet for all things Python. I tried to make it so that `Ctrl+F` would be easy to use here. Note that many symbols have more than one use.


## What does this mean?

| word/symbol | what does it mean? |
|:-:|:-:|
| `@` | Python decorators <em>or</em> numpy matrix multiplication |
| `*` or `**` in front of<br>variable in function | list/dictionary packing/unpacking |
| `True` or `False` | boolean values |
| `1` or other whole number | integer |
| `0.1` or other<br>number with decimal | float |
| `=` | assignment operator <em>or</em> default parameter value |
| `==`<br>`<=`<br>`>=`<br>`<`<br>`>`<br>`!=` | boolean binary operators |
| `and`<br>`or`<br>`is`| more boolean binary operators |
| `not`| boolean unary operator |
| `#` | comment |
| `"""`<br>`words`<br>`"""` | docstring <em>or</em> comment (discouraged) |
|`"words"` or `'words'` | string |
|`b"words"` or `b'words'` | binary string |
|`f"words"` or `f'words'` | formatted string |
| `(` and `)` | function call <em>or</em> tuple |
| `[` and `]` | list <em>or</em> indexing/splicing |
| `{` and `}` | dictionary |
| `:` | key-value pair separator in dictionaries <br><em>or</em> splicing range <br><em>or</em> function annotation for function parameter| 
| `.` | method call on object |
| `,` | element separator in iterables |
| `:=` | walrus operator |
| `pass` | null operation |
| `if`<br>`elif`<br>`else` | if/else loop |
| `for` | for loop |
| `for` with `else` | for loop with else statement |
| `while` | while loop |
| `while` with `else` | while loop | 
| `+`<br>`-`<br>`/`<br>`*`<br>`//`<br>`%`<br>`**` | arithmetic operators |
| `+=`<br>`-=`<br>`*=`<br>`//=`<br>`%=`<br>`**=` | augmented operators | `break` or `continue` | loop adjustments |
| `lambda` | anonymous function definer |
| `try`<br>`except`<br>`else`<br>`finally` | exception handling |
| `raise` | exception raising |
| `global`<br>`nonlocal` | global variables |
| `def`<br>`return` | function definition |
| `from`<br>`import`<br>`as` | module import |
| `with` | file handler (primarily) |
| `yield`<br>`next`<br>single-line `for` loop in `()` | generator functions |
| `for` loop in `[]` | list comprehension |
| `for` loop in `{}` | dictionary comprehension |
| `del` | garbage collection |
| `def` | function definition <em>or</em> method definition |
| `class`<br>`self` | class definition |
| `__` on either side<br>of method name | usually indicates dunder method |
| `_` | private data member <em>or</em><br>unused variable placeholder|
| `assert` | debugging word |
| `async`<br>`await` | asyncronous function definitions<br>with `asyncio` module |

## What does this do?

| built-in function | what does it do? |
|:-:|:-:|
| `abs()` | absolute value |
| `all()` | checks if all the items of an iterable are true |
| `any()` | checks if any of the items of an iterable are true |
| `callable()` | checks if item is callable |
| `chr()` and `ord()` | convert integer to character and vice versa |
| `dir()` | gets list of properties and methods of item |
| `enumerate()` | attaches index to each item in an iterable (good for `for` loops) |
| `eval()` and `exec()` | evaluates/executes item as code (bad practice) |
| `filter()` | excludes items from iterable |
| `format()` | formats a value as a string by given rules |
| `getattr()`,<br>`setattr()`<br>and `hasattr()` | gets/sets/checks existance of method or property by string |
| `globals()`<br>and `locals()` | gets list of all current global/local symbols |
| `hash()` | gets hash value |
| `help()` | gets docstring |
| `id()` | gets memory address of object (approximately) | 
| `input()` | gets user input |
| `isinstance()` and `type()` | checks or gets the type of an object (second is best for debugging only) |
| `len()` | get length of object |
| `map()` | applies a function to each item of an iterable |
| `max()`, `min()`<br>and `sum()` | gets max/min/sum value of iterable |
| `open()` | opens file |
| `print()` | prints string version to terminal |
| `range()` | makes iterable range object |
| `reversed()` | makes reverse-direction version of iterable |
| `round()` | rounds a number to specified decimal places |
| `sorted()` | makes sorted list |
| `super()` | gets parent class |
| `zip()` | makes a generator for iteration |

A few built-in functions are absent above. The internet will be helpful in telling you what to do with those.

## What is this?

| data type | how to make | what is it? |
|:-:|:-:|:-:|
| integer | `int()` | whole number |
| float | `float()` | decimal number |
| string | `str()` | string of characters |
| boolean | `bool()` | true or false value |
| list | `lst()` or `[]` | mutable collection |
| tuple | `tuple()` or `()` | immutable collection |
| dictionary | `dict()` or `{}` | mutable collection of key-value pairs |
| set | `set()` | mutable non-repeated unsorted collection |
| frozenset | `frozenset()` | immutable non-repeated unsorted collection |
| bytes | `bytes()` ||
| byte array | `bytearray()` ||
| hexadecimal | `hex()` ||
| octal | `oct()` ||

## What does this word mean?

| name | what does it mean? |
|:-:|:-:|
| iterable ||
| mutable/immutable ||
| abstraction/encapsulation ||
| instant of class ||
| parent/child class ||

## What does this module do?

| module name | what does it do? |
|:-:|:-:|
| `datetime` | |
| `json` | |
| `math` | |
| `os` and `sys` | os/system stuff |
| `random` | random numbers |
| `requests` | |
| `time` | |
| `collections` | |
| `cv2` | |
| `matplotlib` | |
| `numpy` | numerical stuff (especially matrices) |
| `PIL` | |
| `tensorflow` | |
