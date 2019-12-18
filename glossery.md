### General
- A X 10^-B -> `3e-B` i.e (3 X 10^-5) -> `3e-5`
  Every rise in B is dividing by 10
- overfitting: model becomes too specific for it's training data
- Linear regressions: Fit one line through a large amount of dots
- Tensor: multi dimensional array
  - Rank: number of axis
  - Axis
- Loss function: how good our prediction is in regard to actual data
- Gradient Descent: Guessing one prediction function at each step and then using the derivitive to understand if we are closer to the answer. Multiple guesses help us find a better prediction fn.
- SGD: Stochastic gradient descent: Same as the regular one but here we use mini-batches so we don't have to run through the whole dataset on each gradient descent calculation
- Learning Rate (lr): The size of "steps" we use in each of the gradient descent steps.
- Epoch: One iteration through the whole dataset
- Model/Architecture: The mathematical function that you are fitting the params to (the prediction function)
- Parameters/Weights/Coefficients: The numbers we are updating in the prediction function to make it better.

### Fast AI Specific
- error_rate: 1.00 = 100%
- for the second round of training (after `unfreeze`) we use a range of a single power of 10 (just inc the number in the pow)