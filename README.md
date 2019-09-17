# Code-Mixed Tweet Identifier
It classifies the tweets data into three main categories English, Hindi and Code-mixed.
It also identifies code-mixed sentences which have mixing of grammatical constructions from each language

Data is provide in the data folder along with code

## Requirements
- Keras
- Tensorflow or Theano (we experimented with theano)
- Gensim
- xgboost
- NLTK
- Sklearn
- Numpy

## Instructions to run

### There are two main approaches:-
- Using Character Aware Neural Networks after feature modelling using CNN. 
  Code for this approach is available at `code/NN_approach.ipynb`
- Using SVN the code for which is available at `code/train_shub.ipynb`

Transliteration is carried out using this library( https://github.com/irshadbhat/litcm )
