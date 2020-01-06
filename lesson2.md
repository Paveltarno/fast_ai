- Watch it again step by step

Linear Algebra part:
So we have a line `y = ax + b`, we write it as `y = a1x1 + a2x2`. This is all good
now we get some data in as points (x,y) basically we can create a line function out of each one of these points (provided there is another point somewhere, I'm not sure about that ATM). 
Then we will have:
- a vector of `y`s
- a matrix of `x`s (we look at `x2 = 1` atm)
- a vector of `a`s (a1, a2)
Then we can write this function (using a matrix vector dot notation which is multiplying a matrix by a vector): `y(vec) = x(matrix)a(vec)`. This is a math notation which is shorter but the same as writing it using a loop.
We can call it an `architecture` it has 2 params (a1, a2).
- SGD ([Stochastic Gradient Descent](https://en.wikipedia.org/wiki/Stochastic_gradient_descent))
  - We take a line (pick an a1 and a2) and start fitting it until we find the lowest error (from the MSE function)
  - Using a derivative (or gradient, or the `backward` fn in PyTorch) will give us a "hint" where we should be trying our next fitting

Common lr tweaks:
- if `validation_loss` is very high, `learning_rate` is too high
- `training_loss` is higher then `validation_loss`, `learning_rate` is too small
- `error_rate` is getting smaller VERY slow between epochs, learning_rate is too small
- we are overfitting when our error_rate starts getting worse
- When looking at the lr_find plotting we are looking for the biggest downward slope (means a drop in the loss_function)
- `3e-3` is just a good default learning rate for the first fit
