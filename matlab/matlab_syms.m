%       __  ___      __  __      __         _____                     
%      /  |/  /___ _/ /_/ /___ _/ /_  _    / ___/__  ______ ___  _____
%     / /|_/ / __ `/ __/ / __ `/ __ \(_)   \__ \/ / / / __ `__ \/ ___/
%    / /  / / /_/ / /_/ / /_/ / /_/ /     ___/ / /_/ / / / / / (__  ) 
%   /_/  /_/\__,_/\__/_/\__,_/_.___(_)   /____/\__, /_/ /_/ /_/____/  
%                                             /____/   

% Miles Robertson, Math 2250, 1/29/20

%% Note
% All of these sections are meant to be ran unless it says otherwise.

%% Fun fact
% Type 'clc' into the command window to clear it of what came before (it
% doesn't delete anything), and type 'clear all' to delete all previously
% used variables from computer memory. Neither of these commands will
% change the document itself, just what the computer remembers.

%% Symbolic variables, part 1
% Quick distinction: there are matlab functions, and there are mathematical
% functions. The first is stuff that you learned in the matlab intro
% document, like log(), quiver(), etc. They're all 'matlab functions'.
% However, in this doc, I'll make a distinction between those functions and
% the mathematical ones, e.g., y = e^t is a mathematical function.

% In math, we write symbolically all the time. The only time we ever seem
% to use specific numbers is for the answers to homework questions. How
% could you tell the computer to save a mathematical equation to use for
% later, like y = e^t? In matlab, we use symbolic variables:
syms t
y = exp(t);

% Just two lines and we've made ourself a function! Let's unpack what has
% happened:
%   - The first line creates a 'symbolic variable' t, which means matlab 
%     won't go looking for what the value of t is, it will just leave it as
%     a symbol.
%   - The second line starts by making a regular old variable (initially
%     non-symbolic) called y. Then, it sees the = and concludes that we
%     will be assigning something to y. Then, it sees exp(t) and says "Oh
%     the symbolic variable t is in there. That means we're wanting to do a
%     symbolic expression, and not just evaluate a number." So, realizing
%     that exp(t) will symbolize e^t, the program converts y to also be
%     symbolic and assigns exp(t) to it.

% Run this section before continuing to the next one.

%% Symbolic variables, part 2
% So, you've made your first mathematical function in matlab by running the
% last section. Let's see what it can do!

% Say we want to find the value of y when t is equal to 4. We can do this
% by using the 'subs' matlab function (short for substitute). Go ahead and
% run this section now and see the result of the following line.
subs(y,t,4)

% The format for using this is like this: 
% subs([function], [variable to plug number into], [number to plug in])

% ...so as you can see above, subs(y,t,4) answers this question: what is 
% the value of 'y' when 't' equals '4'? 

% When you type in the command 'subs(y,t,4)', you'll notice the answer is
% still symbolic, and the command window responds with 'exp(4)'. Often, we
% want the decimal form of that answer instead. See the next section for
% more info.

%% Converting symbols to numbers
% So, the last section left us with the answer 'exp(4)' when I wanted the
% decimal answer. To convert symbolic numbers like 'exp(4)' into decimal
% numbers, we can use the 'double' function:
answer = subs(y,t,4);
double(answer)

% All we're doing here is again running 'subs(y,t,4)', but now saving the
% result to the variable 'answer', which is then converted to a decimal by
% using the 'double' function. Run this section to see the result in the
% command window.

% A few things to mention:
%  - It is called 'double' in reference to the number of decimal places the
%    computer can store for the number (i.e., double as many as the
%    old-fashioned computer decimal numbers).
%  - Instead of doing two lines like I have above, I could do one, like
%    this: 'double(subs(y,t,4))'

%% Symbolic variables, part 3
% Now, you might be feeling already like it is overly complicated to use
% the 'subs' function, when in real life we write stuff like y(0) and we
% know that means the equivalent of 'subs(y,t,0)'. Well, lucky for you,
% matlab has you covered:
syms y(t)
y(t) = exp(t);

% Let's review what has happened. First, saying 'syms y(t)' effectively 
% does the following:
%   - Creates a symbolic variable y (which in this case overrides the one 
%     from the previous sections)
%   - Creates a symbolic variable t
%   - The variable y is prepared to be a function of t, so that y(0), y(1),
%     etc can be evaluated just like that.

% After running this section, play around with your function in the command
% window by typing things like y(-1) and stuff like that. That could not be
% done before with the way I introduced in the previous sections. This
% method of doing things can't always be applied, but when it can be, it's
% really nice.

% After defining the function, you can refer to it as y or y(t).

% Note that you still have to use 'double' to convert anything to a
% decimal.

%% Graphing symbolic variables
% It is debatably easier to plot using symbolic stuff than how I showed you
% last time. Both are useful in different occasions though. Assuming you've
% ran the last section, run this one now to see the plot. Note that we're
% using 'fplot' instead of 'plot' like last time.
fplot(y)

%% Symbolic equations, part 1
% Now we learn how to store whole *equations* into variables. Before now,
% we haven't been doing that, we've just been relating one symbolic
% variable to another. Try running this section:
syms y x
eqn = y == sin(x^2)

% What do you see for the value of 'eqn' in the command window? Now
% it's a whole equation, y == sin(x^2).

% One thing to note: In matlab, saying '=' just means "assign whatever is
% on the right of this to whatever variable is on the left of this". In
% contrast, '==' is the mathematical equals sign, and when used with
% symbolic variables, returns the whole equation.

%% Symbolic equations, part 2
% Say you know that an equation has the form y = x + b and that it passes 
% thru the point (4,3). How would you solve for b? You likely know how to 
% solve this, and might even know a few ways to solve it.

% Before going to the code below, try to solve it by yourself by plugging 
% the point into the equation and solving for b. It'll take you 30 seconds.

% Now that you have the answer in your head, let's try to solve this using
% one method available thru the matlab function 'solve':
syms y x b
answer = solve(y == x + b, y==3, x==4)

% In the 'solve' matlab function, we've typed out three mathematical
% equations, and just as you may have guessed, it is finding the y, x and b
% values that satisfy all three listed equations (aka it's solving it).

% When you run this section, the results will feel confusing. You'll see
% the words "struct with fields" and then it will list three lines with the
% symbolic variables defined above. However, all this means is that now
% stored within the variable called 'answer' is something called a struct
% that is itself storing the answer we're looking for. To get the value of
% b, type 'answer.b' into the command window and hit enter. The same can be
% done for 'x' and 'y', but in this case, the results won't be surprising
% since it's what is typed into the 'solve' function.

% For people who know python: structs are basically the dictionaries of
% matlab, with some different syntax of course.

%% Symbolic equations, part 3
% Now, after having run that last section, let's run a similar one but use
% the 'solve' function in a different way:
syms y x b
solve(y == x + b, b)

% Run this section. What do you get? Since you ran the 'solve' function
% with an equation and then a variable, it decided you wanted to solve the
% equation for b and returned the answer, which can be saved and used
% later.

% Note that there was no need to do any 'answer.b' here. This shows that
% using a matlab function different ways can give different types of
% output, depending on the function of course.

%% Symbolic equations, part 4
% I want to show another way to use this function, which is very helpful.
% I'm going to save a polynomial into a variable and see if it can solve
% for the variable x:
syms s
eqn = x^2 - 5*x + 3 == 0;
solve(eqn)

% Since there's only one variable in the equation put into the 'solve'
% function, it assumes you just want to solve for the variable and return
% the number answers. And that's what it did here.

% It returned two messy-looking symbolic answers for possible values of x.
% As perhaps you are already thinking, if we type 'double(solve(eqn))',
% we'll get what we're looking for in decimal format.

% Note that it is up to you if you want to save the equations into
% variables first or type them right into matlab functions like 'solve".

%% Symbolic equations, part 5
% Let's do something tricky:
syms h(t) k c
h(t) = k*t^2 + c;

% Above, we're using k and c as constants. Since h(t) is defined from the 
% get go to be a function of t, we can run things like 'h(2)' and it will
% let c and k stay as constants.

%% Differential equations, part 1
% This can be super useful to you! This is good stuff here. Let's make a
% function and find its derivative:
syms y(t)
y(t) = log(t);  % remember that log is the natural log in matlab
diff(y,t)

% Running this shows the derivative of y with respect to t. Super nice! I 
% have to add a few bits here:
%   - Technically, since it's just a function of one variable, we can just
%     run 'diff(y)' and it will know to derive it with respect to t.
%   - I typed it as 'diff(y,t)', but I could have equivalently done
%     'diff(y(t),t)', since after y's definition I can say y or y(t)
%     equivalently.
%   - I could have done it like this and gotten the same result:
%
%     syms t
%     y = log(t);
%     diff(y, t)

%% Differential equations, part 2
% How about finding the value of the derivative at a given t value, say 
% t=3? Copying a bit from the last section:
syms y(t) g(t)
y(t) = log(t);
g(t) = diff(y,t);
g(3)

% Boom. I'll leave it to you to figure out what is going on here.

%% Integrating functions
% Real quick, I'll show you what it looks like to integrate functions in
% matlab without going into much detail (you won't end up using it very
% much):
syms t
int(t^2,t)

% So that is saying "integrate 't^2' with respect to 't' and return the 
% answer". Note that this does NOT return a constant, so other methods
% later will be better than this one.

%% Solving differential equations, part 1
% Not all diffeqs are solvable, but this is really nice when they are
% solvable. Below, I will show how to solve y' = 5y with y(0)=3:
syms y(t)
eqn = diff(y,t) == 5*y;
dsolve(eqn, y(0)==3)

% Here, the 'eqn' variable stores a differential equation. This is handled
% similarly to what we would do with the 'solve' function, but now since
% it's a diffeq, we're using the 'dsolve' function. The result is the
% solution with that initial value applied. The result of 'dsolve' can be
% saved into a mathematical function much like in the section "Differential
% equations, part 2".

% Note that 'dsolve' here is taking a whole equation as an input, but the
% output is just whatever y is equal to, i.e., the output of dsolve doesn't
% include y and just shows the important side of the equation. In fact,
% after this code is ran, matlab still hasn't assigned anything to the
% variable y and it can be used for other things.

%% Solving differential equations, part 2
% We'll do the same thing as above, but now we'll do it without an initial
% condition and see what happens:
syms y(t)
eqn = diff(y,t) == 5*y;
dsolve(eqn)

% Still works! You'll see that it has created a constant (usually in the
% form C[number], e.g., C3 or C5, but the number has no mathematical 
% meaning) which means we're getting the general solution there. 

% Note: If you want to find that constant's value after using this method,
% you may have to create it symbolically before referring to it, like this:
% syms C3
% But that's only if you want to do something like 'subs' with it or
% something. Usually, this is not the case.

%% Big example, part 1
% This is just showing what matlab can do. You might run into problems when
% trying this on your own with your own examples, and that is a-okay. There
% is a learning curve to this.

% We have a differential equation of the form y' + a(t)y = k*q(t), with the
% functions a(t) = 2/t and q(t) = e^(2t) and where k is a constant. Let's 
% find the solution to this equation. Run this cell to see what happens.

syms y(t) a(t) q(t) k
a(t) = 2/t;
q(t) = exp(2*t);
eqn = diff(y,t) + a*y == k*q;
dsolve(eqn)

% Well, it worked! It looks complex, but everything worked out okay in
% there. I'm seeing a matlab-generated constant (again in the format of
% C[number]) and the constant k that I haven't figured out yet. Onto the
% next section!

%% Big example, part 2
% Now let's say we want to find the values of the constant and of k given
% two points: y(1) = 1 and y(2) = 3. To do that, I'm going to need to use
% the 'solve' function, and that requires an equation, not just an
% expression. So I have to do something like this (only the last two lines 
% are different than the previous section):
syms y(t) a(t) q(t) k
a(t) = 2/t;
q(t) = exp(2*t);
eqn = diff(y,t) + a*y == k*q;
y(t) = dsolve(eqn);
answer = solve(y(1)==1, y(2)==3)  % solve for constant & k

% I can re-use y here by the explanation given in "Solving differential 
% equations, part 1".

% You'll notice that now the variable 'answer' is a struct (like in 
% "Symbolic equations, part 2") and you can get the constant and the k
% value from it.

% Think about what this must be doing: inside the solve function, we're
% giving y(1) (which we know returns a symbolic representation of y at t=1)
% being equal to 1 and a similar explanation for the second one, and then
% it just solves it for the two unknown variables.

%% Big example, part 3
% One thing that was messy in the last part is that we had to deal with the
% computer-generated constant, which is not preferable since you'd have to
% separately declare that constant as a symbolic variable if you wanted to
% do anything with it. I'm going to redo the previous part in a better way
% (again, only the last two lines are different):
syms y(t) a(t) q(t) k
a(t) = 2/t;
q(t) = exp(2*t);
eqn = diff(y,t) + a*y == k*q;
y(t) = dsolve(eqn, y(1)==1);
answer = solve(y(2)==3)  % solve for k alone

% Now, we're moving one of the data points (specifically y(1)=1) into
% 'dsolve' as an initial condition for solving the differential equation.
% This effectively gets rid of any computer-generated constants, so we can
% just deal with the ones that we declared in "Big example, part 1".

% This means the variable 'answer' is actually the value of k given that
% y(2)=3. In the next section, I'll show you how to use that.

%% Big example, part 4
% Pay close attention to the last three lines here:
syms y(t) a(t) q(t) k
a(t) = 2/t;
q(t) = exp(2*t);
eqn = diff(y,t) + a*y == k*q;
y(t) = dsolve(eqn, y(1)==1);
answer = solve(y(2)==3);
y(t) = subs(y,k,answer)

% Note that in the third-to-last line, we're storing the solution of the
% differential equation into y, then in the last line, we are taking that
% y and substituting our new answer to k, and the result of that is
% assigned to y again, overriding its previous value.

%% Big example, part 5
% After running the previous section, run this one:
fplot(y)

% If you've forgotten about the 'fplot' function, look back at "Graphing 
% symbolic variables" above.

% Looks like it is a pretty strange function. It blows up at t=0, comes
% back down, and then increases exponentially. Somewhere around the t=1
% range, it reaches a local minimum. How could we find the exact t value
% for that? Look at the next section...

%% Big example, part 6
% You know plenty well how to find extrema for a function: you take the
% derivative and find where it is equal to zero. Let's use that same
% process here. Run this section and see what happens:
t_value = solve(diff(y,t)==0)

% Looks like the t=1 guess was pretty close! We have successfully found the
% extrema value.

% A few things to note: 
%   - We're not using 'dsolve' even though there's a 'diff' in there. 
%     That's because we're not trying to solve this as a differential 
%     equation, we're literally calculating dy/dt (which itself is a 
%     function of t) and then find where it is equal to zero.
%   - It will say this in the command window: "Warning: Unable to solve 
%     symbolically. Returning a numeric solution using vpasolve." This is
%     not an error, it's just saying that it had to approximate the answer
%     instead of finding it symbolically. No issues with that.
%   - If we had not gotten the warning, it would mean that the equation was
%     successfully solved symbolically, and therefore the answer would be
%     symbolic as well. We'd probably have to use the 'double' function for
%     our own benefit of verifying the approximate numerical solution.

%% **Practice**
% Below, see if you can use 't_value' from the previous section to find the
% value of y at its local minimum. Don't forget to use 'double' if
% necessary.



%% Big example, part 7
% It looks like our solution goes to 0 as t goes to negative infinity. We
% can calculate that on matlab as well:
limit(y, t, -Inf)  % that is in fact how you'd say 'negative infinity"

% Try to figure out what is happening here on your own.

%% Things to look over
% Here are the websites describing how to use the step function and delta
% function in matlab, respectively:
% https://www.mathworks.com/help/symbolic/heaviside.html
% https://www.mathworks.com/help/symbolic/sym.dirac.html