- Watch it again step by step

- 

Common lr tweaks:
- if validation_loss is very high, learning_rate is too high
- training_loss is higher then validation_loss, learning_rate is too small
- error_rate is getting smaller VERY slow between epochs, learning_rate is too small
- we are overfitting when our error_rate starts getting worse
- When looking at the lr_find plotting we are looking for the biggest downward slope (means a drop in the loss_function)
  