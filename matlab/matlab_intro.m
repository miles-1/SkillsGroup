%          __  ___      __  __      __       _       __           
%         /  |/  /___ _/ /_/ /___ _/ /_     (_)___  / /__________ 
%        / /|_/ / __ `/ __/ / __ `/ __ \   / / __ \/ __/ ___/ __ \
%       / /  / / /_/ / /_/ / /_/ / /_/ /  / / / / / /_/ /  / /_/ /
%      /_/  /_/\__,_/\__/_/\__,_/_.___/  /_/_/ /_/\__/_/   \____/ 

% Miles Robertson, Math 2250, 1/23/21
                                                           

%% Comments & sections
% To start, you'll notice that matlab adds some color to certain words and 
% characters. That happens automatically. For example, anything that 
% follows a % sign in a line will be ignored by the computer when you run
% the code. This is called a "comment", and matlab turns all comments 
% green. It's a good way to keep track of things for yourself that the 
% computer will ignore.

% Notice that next to the words "Comments & sections" above, I have two % 
% instead of one, and that line is bolded. That is because a double-% 
% indicates a new section. Even if there are multiple sections in one 
% document, each can be run separately using the "Run Section" button under 
% the "Editor" tab above. This is somewhat unique to matlab, most coding 
% languages require you to run a document in full. 

% (Note: Don't click the "Run" button, which is close to the "Run Section" 
% button and is more tempting to push, unless you want to run the whole 
% document).

%% **Practice**
% Try running the above section by clicking the "Run Section" button.
% If it successfully runs, nothing should happen since all comments are
% ignored, so according to the computer, you didn't ask it to do anything.

% If the program throws errors out at you while trying to run that section,
% get some experience with relying on the internet and google what you
% should do. If you're still confused, reach out and we'll help you.

%% Variables, part 1
% Variables can store values, lists, functions or other things in this
% program. If you want to store a value and use it later, then you just
% make up a variable name and type the equal sign and then the value, like 
% this:

var1 = 14
number = 1.3

% Note that the equals sign is not meant to be interpreted as the 
% "mathematical" equals sign. The equals sign is an "assignment operator": 
% it takes what's on the right side and puts it into what is on the left.

% You'll see the equal sign is highlighted and red-squigglied. That doesn't
% mean it will crash if you run it. If you mouse over either of the = 
% above, you'll see that it recommends putting a semicolon at the end of 
% the statement to "supress it". That means it will still run that line, 
% but the command window won't show anything. Run this section, and you'll 
% see that since there is no semicolon, both of the variables and their 
% values show up in the command window below.

% Most of the time, you'll want to supress this output by including a
% semicolon on the end, but it is not required to get a section to run.

% (note: variables must start with a letter and can only contain letters, 
% numbers and underscores)

%% **Practice**
% Within this section, try to make a few of your own variables and set them
% equal to numbers, and run this section. Try to do it with and without the 
% ending semicolon.



%% Command window, part 1
% If you have run the "Variables, part 1" section, you'll see that
% if you click on the command window below and type the variable name, it
% will show it's value. Try it out by typing "var1" (excluding 
% quotation marks of course) and hitting enter. This shows that the
% variable is saved in your current program session and can be reused later
% in the program, which we will do in the following sections.

%% Variables, part 2
% Matlab is short for "matrix lab", and it is quite focused on matrices. So
% those are a big deal for this program! Although we haven't talked about
% matrices yet, I'll briefly introduce how to use them here.

% A matrix can be saved to variables, just like for numbers. For example:

A = [1 2 3; 4 5 6]

% Run this section. Notice that since there is no ending semicolon and the
% output is not suppressed, you'll see this matrix A in the command window
% below. See that numbers within a row are separated by spaces, and then
% rows are separated within the matrix by semicolons.

%% **Practice**
% Using a variable B, make a 3x4 matrix (aka 3 rows and 4 columns) with any 
% numbers you'd like. Do so below, and check the output in the command to 
% make sure it looks good.



% Note that you can type variable names into the command window at any time
% to see their value. Use the up/down keys on your keyboard while in the
% command window to surf through your previously used commands.

%% Variables, part 3
% Assuming you've run "Variables, part 2" above, run the code below to see
% the entry of A that is in the 1st row and the 2nd column.

A(1,2)

% Note: frustrating to computer scientists, this program starts counting at
% one, not zero, like most other programs.

%% **Practice**
% In the command window, which can give "live feedback" to your commands,
% find the entry of A in the 2nd row and the 2nd column.

%% Variables, part 4
% First, type A into the command window and hit enter.
% Next, run this section (which effectively just runs the one line below).

A(1,2) = 100;

% Since there is a terminating semicolon, you won't see anything. However,
% if you type A into the command window, you'll see that the corresponding
% entry has changed.

%% Variables, part 5
% Run this section.

A = 1;

% Now, you've effectively erased what was previously saved to the variable
% and replaced it with the number 1. Verify this by typing A into the
% command window.

%% Command window, part 2
% Typing things in the command window will have the same effect as running
% identical code in a section.

%% **Practice**
% Make some new variables in the command window. For example, you could 
% type:
% variable_thing = 5
% Then verify it has saved in the program by typing:
% variable_thing

%% Variables, part 6
% Rerun the section "Variables, part 2" above.

% Make a copy of this matrix by running the following:

B = A;

% Verify that B is now a copy of A by checking them both in the command
% window. Now, in the command window, change one of the entries of A to be
% 100 (as described in "Variables, part 4" above). Verify that entry of A
% changed via the command window. Did the same change occur for the matrix
% B, or is it like A before the change?

%% Operations
% This section is not meant to be ran. The code here is for you to type
% into the command window.

% The basic operators (aka *, +, /, -, ^) are by default interpreted to be 
% either 1) regular old integer operations or 2) matrix operations. Type 
% the following in the command window one at a time:
5*6
1/2
3+pi  % Yes, that is how you get pi in this program
2-1.5
2^6

% Those are all binary operators (aka they take two numbers to get the
% result).

% Here are a few functions that you'll use frequently. Type these in as
% well to see how they play out in the command window:
sqrt(2)
log(2)  % This is the natural log
exp(2)  % This means e^2
cos(pi)
sin(0)

% Matrix multiplication is unique: in math, it is defined in a way that you
% probably wouldn't expect. We'll go into it more as class develops, but
% copy/paste these lines into the command window and see that you can get
% the product:
C = [1 2 3; 4 5 6];
D = [1; 2; 3];
C*D

% ... so a 2x3 matrix (C) times a 3x1 matrix (D) gives a 2x1 matrix. This
% is using the normal definition of matrix multiplication that we use in
% math. Note that the number of columns of the first matrix must match the
% number of rows in the second matrix, which is the case for C*D. Now,
% try to type D*C in the terminal and see what happens.

% There's your first error message! This one is super common. It's showing
% that the number of columns of the first matrix (D) doesn't match the
% number of rows in the second matrix (C). This is invalid matrix
% multiplication.

% Say you want to multiply every entry in a matrix by 2. Type the
% following:
2*D
% or, equivalently,
D*2

% Now, the program indeed returned what you're looking for, but now if you
% type D in the command window, you'll see it didn't change. That's because
% typing 2*D will give you the product, but it won't save it over D, so D
% remains unchanged. To change D, we'll type the following:
D = 2*D;

% Now if you type D in the command window, you'll see it now has the 
% changes you were intending.

% Say that you want to square each element of C. You might think we would 
% do something like this:
C = C^2;

% What happens if you do that? Note that since C^2 is the same as C*C, the
% dimensions don't match and we run into a problem. Instead, we use the
% following command (as suggested in the error that comes up for C^2):
C = C.^2;

% This lets the computer know that you want to square the matrix 
% element-wise instead of squaring the whole matrix. That will work.

% Finally, I'll show three functions you can perform on matrices:

% First, transpose. It can be done on any matrix, it just flips the rows 
% and columns. It works by adding a ' after a matrix. Check out these two
% examples below. Note that it is a ' (shares the key on your keyboard with
% ") and not a ` (which is in the top left of your keyboard). If this
% immediately follows a matrix or a variable storing a matrix. Copy/paste
% these two examples into the command window, and then check the values of
% D and C.
D = D';
C = [1 2 3; 4 5 6; 7 8 10]';

% Second, inverse. It can only be done on square matrices (we'll learn
% about that later). I purposefully reassigned C to be a square matrix 
% above so you'd see an example that works. Try the line below in the
% command window, and then try the same thing with D to see the error that
% comes up. Note that some square matrices cannot be inverted (again, we'll
% learn about that later).
C = inv(C);

% Third, size. This gives the size of a matrix in this form:
% [number of rows] [number of columns]
size(D)

%% Making & using lists
% This section is not meant to be ran. The code here is for you to type
% into the command window.

% There turns out to be quite a need to make lists for things. There's a
% quick way to make a list of a range of numbers. For example, type the
% following into the command window and see the result.
0:5

% Conveniently, it makes a list of integers from 0 to 5. We can save this
% to a variable. A few examples:
list1 = 0:5;
list2 = -10:4;
list3 = 10:21;

% You can even make a matrix pretty fast by using this method and the 
% reshape function. Take a second to try to identify why this gives the 
% output that it does after copy/pasting in the command line:
reshape(1:20, 4, 5)

% All of these are assuming that we want the list to count by 1 from the
% first number to the second. What if we wanted to count by 0.5? Well, you
% can:
3:0.5:6

% Or, count backwards from one number to another:
6:-1:3

% Check out what happens when the step size doesn't fit quite right:
1:2:6

% Here's a way you would make a list that goes from 1 to 10 and then back
% down again to 1:
[1:10 9:-1:1]

% An alternate list-generating method is using the `linspace` function.
% There are two main ways to use this function:

% First, if you put in only two numbers, it makes 100 numbers by default,
% equally spaced, from the first number listed to the second.
linspace(0,10)

% Second, if you put in three numbers, it takes the last number listed and
% returns that many numbers evenly spaced from the first to the second
% listed number. To try to make this more clear, I'll say that this second
% method gives the same output as the first if the third number is 100.
linspace(0,10,9)

% Sometimes, instead of just making a list in one dimension, you need a
% list of coordinate pairs. For example, maybe you have an x, y grid that 
% ranges from -3 to 3 for both x and y, and you need every integer-number 
% coordinate pair possible. It could be made by brute force, but that would
% suck. We can use `meshgrid` instead:
[x, y] = meshgrid(-3:3, -3:3);

% In this situation, we see that both x and y are being assigned values
% passed by meshgrid, so we're getting two variables at once. After running
% this line, you can type x and y one at a time into the command window and
% see what they look like. They are both matrices of the same dimension,
% and if they were layed on top of each other, you would find every
% possible integer-number coordinate pair possible for the graph I
% described above.

%% Accessing particular values of lists
% This section is not meant to be ran. The code here is for you to type
% into the command window.

% Similar to "Variables, part 3" above, you can get a specific element of a
% list. Using list3 from the previous section (make sure you've run that), 
% we can get the 5th element. Note that there is no need to specify 
% row/column here since it's just a one-dimensional list:
list3(5)

% The colon is used for other things besides lists. If we think about
% "Variables, part 3", what if we wanted a whole column or row of the 
% matrix A below? 
A = reshape(1:20, 4, 5);

% Let's get the 3rd row:
A(3,:)

% This is effectively saying "get the elements in row 3 and any column".
% Same with if we wanted just the 2nd column:
A(:,2)

% Or you could be super fancy and get every even-numbered column:
A(:,1:2:5)

%% Getting Help with Built-in Matlab Functions
% I've already introduced several built-in matlab functions (`sin`, `ln`,
% `linspace`, `reshape`, etc). If you ever find a function you're clueless
% about, you should try one of these things in the command window:
% doc [function name]
% help [function name]

% For example, later on I introduce the `quiver` function. But if you saw 
% it and had no idea what it was, you might type one of the following into 
% the command line to learn more:
doc quiver  % preferred method for beginners - more user friendly
help quiver  % gives help in the command window

%% Plotting functions, part 1
% For this program, you often plot points instead of equations. For
% example, if we want to plot y = e^x, then we could do this:
x = 0:5;
y = exp(x);  % see here that exp is applied element-wise to x
plot(x, y)

% Run this section and try that out.

%% Plotting functions, part 2
% Perhaps you noticed that in the previous plot, the line was... not very
% pretty. It is because the x values I used were only 0, 1, 2, 3, 4 and 5,
% and matlab just draws lines between points for the plots, so it didn't
% turn out so good. Let's try again, this time with more x values by using
% what was shown in "Making & using lists":
x = 0:0.2:5;
y = exp(x);
plot(x, y)

%% Plotting functions, part 3
% There are hecka ways to customize graphs. I won't get into it much here,
% but if you want to learn more, type "doc plot" in the command window and
% read the section "Specify Line Style, Color, and Marker" (and any other 
% section, of course), or google "how to __ in a graph in matlab" and
% there's almost always an answer.

% Example:
x = 0:0.2:5;
y = exp(x);
plot(x, y, "b--o")  % b means blue, -- means dashed line, and o means dots
axis([0 3 1 10])  % set axes limits in the order of [xmin xmax ymin ymax]

%% Plotting functions, part 4
% You can plot many functions at a time as well. When doing so, it is wise
% (but not necessary) to reuse the x-variable between the two functions for
% simplicity. Below, I'll graph y = e^(x/5) and y = sin(x). Also note that 
% I'm using the `linspace` function for x instead of the normal list 
% creation using colons. I find `linspace` easier to interpret sometimes.
x = linspace(0,5);
y1 = exp(x/5);
y2 = sin(x);
plot(x, y1, x, y2)
grid on

% That last line, "grid on", is not necessary, but it adds gridlines to
% your chart, which are left off by default.

%% Plotting functions, part 5
% We don't need to put both functions in the same usage of `plot`. But if
% we run the code as-is below, the second one overrides the first and it
% doesn't appear.
x = linspace(0,5);
y1 = exp(x/5);
y2 = sin(x);
plot(x, y1)
plot(x, y2)

% See the next section for how we can solve this.

%% Plotting functions, part 6
% If we include "hold on" and "hold off", the program knows to keep adding
% new plots onto the previous one as long as it's between the "hold on" and
% "hold off". This might seem pointless to separate them, but this will 
% have applications later.
x = linspace(0,5);
y1 = exp(x/5);
y2 = sin(x);
plot(x, y1)
hold on
plot(x, y2)
hold off

% Also, it's kind of flexible where you put the "hold" statements. There's
% not just one way to do it, but this way works!

%% Making a direction field, part 1
% The `quiver` function can place a ton of arrows down in the direction you
% want them to be. In one of its uses, it can take four parameters: 1) x
% value matrix, 2) y value matrix, 3) vertical-distance-of-arrow matrix and
% 4) horizontal-distance-of-arrow matrix. Note that all the matrices 
% involved are the same dimension. In practice, what happens is that
% the quiver function looks at the ith row and the jth column of 

[x,y] = meshgrid(-3:.3:3,-2:.3:2);
dy = y + sin(x);  % Diffeq goes here to make dy matrix
dx = ones(size(dy));  % Makes a big matrix of 1's for dx
dyu = dy./sqrt(dx.^2+dy.^2);  % Normalize dy
dxu = dx./sqrt(dx.^2+dy.^2);  % Normalize dx
quiver(x,y,dxu,dyu)  % Plots the direction field

%% Making a direction field, part 2
% It is sometimes useful to put a solution into the direction field to give
% context. This is shown below (notice the "hold on" and "hold off").

[x,y] = meshgrid(-3:.3:3,-2:.3:2);
dy = y + sin(x);
dx = ones(size(dy));
dyu = dy./sqrt(dx.^2+dy.^2);
dxu = dx./sqrt(dx.^2+dy.^2);
quiver(x,y,dxu,dyu)

x_soln = -3:.3:3;  % I'm using the same range here as in the meshgrid above
y_soln = -0.1*exp(x_soln) - sin(x_soln)/2 - cos(x_soln)/2;  % A solution
hold on
plot(x_soln, y_soln, 'LineWidth', 2)
hold off

% You'll see here that I included 'LineWidth' followed by 2 above. That
% does what you think it does. The `plot` function has loads of features.

%% For loops
% If you have something you want to do multiple times, you can use a for
% loop, which repeats the contained code a specified number of times. For
% example:

x = linspace(0,10);
y = sin(x);
plot(x, y)

for i = 1:10
    y = sin(x) + i*0.1;
    hold on
    plot(x, y)
    hold off
end

% What is effectively happening here is that the first plot is created (the
% one before the for loop), and then it says "for i = 1:10", which means
% "repeat this code over and over, first with i having the value of 1, then
% 2, etc, until the code is repeated with i having the value of 10."

%% Making functions
% There are several built-in matlab functions we've already talked about.
% Say you wanted to make your own, where you give a function two numbers
% and it returns their product divided by their sum. We can do that like
% this (of course, you'd uncomment it first):

% function f = the_function_thing(a, b)
%     f = (a*b) / (a+b);
% end

% Notice that whatever is the variable in the first line of the definition
% (in this case, the variable f) is what must be assigned something within 
% the function definition in order for the function to return a value.

% Now, matlab has a weird thing that you can only put function definitions 
% at the very end of documents, whether they're in their own section or 
% not, so running the above code uncommented would give an error. So I have
% put this at the bottom of the document uncommented so I can show you that
% it works:

the_function_thing(1, 4)

%% Making animations
% Here is a bit of a culmination of everything we've gone through so far. I
% want to show several solutions of y' = y + sin(x), and show it move up
% and down a bit, all within a direction field. Try to piece together what 
% is happening below:

[x,y] = meshgrid(-3:.3:3,-2:.3:2);
dy = y + sin(x);
dx = ones(size(dy));
dyu = dy./sqrt(dx.^2+dy.^2);
dxu = dx./sqrt(dx.^2+dy.^2);
quiver(x,y,dxu,dyu)
axis([-3 3 -2 2])  % Important to force graph to stay one size

x_soln = -3:.3:3;
movement = [-2:0.1:2 2:-0.1:-2];
hold on
solution = plot(1);  % A dummy variable so the for loop works 1st time
for i = movement
    y_soln = soln(i, x_soln);  % Function defined at bottom
    delete(solution);  % Removes previous line
    solution = plot(x_soln, y_soln, 'b', 'LineWidth', 2);
    pause(0.1)  % Pause half a second every time
end
hold off

%% Advanced: symbolic functions, integrals, derivatives
% This is a little difficult to approach, so this part is just for those
% who are interested. Here are some docs to read before you get started
% here. Run them in the command window one at a time (no leading %, of
% course). If there are multiple results, the first option will be what
% you're looking for.

% doc Evaluate Symbolic Expressions Using subs
% doc fplot symbolic
% doc int symbolic


%% Apendix: Functions

function f = the_function_thing(a, b)
    f = (a*b) / (a+b);
end

function y = soln(t, x)
    y = t*exp(x) - sin(x)/2 - cos(x)/2;
end