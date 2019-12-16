### Help
- `help(fn)`
- `doc(fn)`

- DataBunch - Data container
- Learner
  - Dataset
  - ValidationSet

- high loss function -> being very confident about the wrong thing

TODO:
- Run the notebook
- Create your own dataset ( there's an explanation details: ~1h:30)

Nice to have:
- Read: https://www.splunk.com/en_us/blog/security/deep-learning-with-splunk-and-tensorflow-for-security-catching-the-fraudster-in-neural-networks-with-behavioral-biometrics.html

### Basic flow
- We prepared the data, mapped the images to labels (using a DataBunch)
- We used "Transfer learning" where we take an already trained general dataset and train it a bit for our cause
- Trained the model 4 epochs
- Then we looked at what it was wrong about:
  - First we used `plot_top_losses` which returns: prediction, actual, loss (the confidence it thought about the wrong prediction), and probability of actual class (the confidence it though about the actual label)
  - Then we used a `plot_confusion_matrix` fn to visualize if specific categories are confused or a large amount of them
- We then decided to tune the model some more so we `unfroze` it and trained another cycle, that actually raised the error rate.
- We plotted loss/learning_rate (no idea what it is) and saw where is the best learning_rate for us
- We then trained it 2 epochs more with the learning rate range we found from the plotter
