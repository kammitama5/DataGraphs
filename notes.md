Notes from Jason Mayes' presentation on Machine Learning 101
(Slies 1-96)

Parch and Posey :
1. Regular
2. Poster 
3. Glossy

-model
- features (what you are looking to measure/ observe)

-gather data and randomize it 
- visualization of data 

- split data into training and evaluation 

- choose a model -> (typically based on features...two might mean linear, for example)
- compare value model predicted vs target -> how it performed---training iteration
- each step is one training set

- evaluation vs training usu 20 to 80 percentage

- parameter tuning

7 steps of machine learning:
   - gathering data 
   - preparing the data
   - choosing a model
   - training
   - evaluation
   - hyperparameter tuning
   - prediction 
   
 - supervision is most studied area of ML
 
 - k nearest neighbour : sampling X known points close by
 
 - artificial neuron(aka perceptron) -> 
 neuron: bunch of weighted inputs that are summed together 
 bias is added to the total 
 The weights and bias are determined when we train the system.
 If final result is greater than a threshold, it activates, providing an output.
 Strength of an output depends on the activation function chosen.
 The output is then fed into other neurons and the process repeats.
 
 - multi-layered perceptron (or DNN) is one of the oldest forms of neural nets - conceptually
   goes back to the 60s. Each layer is fully connected to the next and data flows forwards only.
   
   
   Relus->
   like half wave rectifier -> if more than threshold, output 0, else output n 
   
   CNNs - video games 
   filtering
   convolution layer
   vs 
   pooling : shrinking the image stack
   
   Rectified Linear Units (reLu)
   
   Deep stacking 
   
   Backpropogation -> Error = right error - actual answer
   
  Hyperparameters (knobs)
  
  
   Convolutional networks-> meant to capture local spatial patterns in data
   
   If your data is just as useful after swapping any of your columns with each other, 
   then you can't use Convolutional neural networks (convnets are great at finding 
   patterns and using them to classify images)
   
   
   Regression:
   concerned with iteratively modeling the relationship between variables using a 
   measure of error in the predictions made by the model. 
   
   Regression methods are a workhorse of statistics and have been co-opted into statistical
   machine learning. Regression is a progress.
   
   
   Instance-based:
   Instance-based learning model is a decision problem with instances or examples of 
   training data that are deemed important or required to the model.
   
   Such methods typically build up a database of example data and compare new data
   to the database using a similarity measure in order to find the best match and make a
   prediction. For this reason instance based methods do not need any training, just 
   example data. Focus is put on the representation of the stored instances and similarity 
   measures used between instances.
   
   
  Decision Trees:
  Decision tree methods construct a model of decisions made based on actual values 
  of attributes in the data. Decisions fork in tree structures until a prediction 
  decision is made for a given record.
  
  Decision trees are trained on data for classification and regression problems. 
  Decision trees are often fast and accurate and a big favourite in machine learning 
  
  Bayesian:
  Bayesian methods are those that explicitly apply Bayes' Theorem for problems such 
  as classification and regression. A good example is spam email detection which figures 
  out if an email is spam based on various likelihoods of features being present (eg. 
  words used)
  
  Clustering:
  Clustering, like regression, describes the class of problem and the class of methods. 
  Clustering methods are typically organized by the modeling approaches such as centroid-
  based and hierarchical. 
  All methods are concerned with using the inherent structures in the data to best organize 
  the data into groups of maximum commonality to then categorize it. 
  
  Association Rules:
  Association rule learning methods extract rules that best explain observed relationships 
  between variables in data.
  
  These rules can discover important and commercially useful associations in large multi-dimens
  ional datasets that can be exploited by an organization 
  
  Artificial Neural Networks:
  Artificial neural networks are models that are inspired by the structure and/or function 
  of biological neural networks in the brain.
  They are a class of pattern matching that are commonly used for regression and 
  classification problems but are really an enormous subfield comprised of hundreds of 
  algorithms and variations for all manner of problem types 
  
  Deep Learning:
  Deep Learning methods are a modern update to Artificial neural networks that exploit 
  abundant cheap computation.
  They are concerned with building much larger and more complex neural networks and, 
  many methods are concerned with semi-supervised learning problems where large data 
  sets contain very little labelled data.
  
  Dimensionality Reduction
  Like clustering methods, dimensionality reduction seeks and exploits the inherent 
  structure in the data. In this case, it's in an unsupervised manner or order to 
  summarize or describe data using less information.
  
  This can be useful to visualize dimensional data or to simplifity data which can then 
  be used in a supervised learning method. Many of these methods can be adapted for us in 
  classification and regression.
  
  Ensemble:
  Ensemble methods are models composed of multiple weaker models that are independently 
  trained and whose predictions are combined in some way to make the overall prediction. 
  
  Effort goes into determining what types of weak learners to combine and the ways in which to 
  combine them. This is a very powerful class of techniques and as such is very popular.
  
 =======================
 Types of ML output: 
 Continuous output 
 Probability Estimation
 Classification (cat vs dog)
 
 Resources:
 
 http://neuralnetworksanddeeplearning.com/chap1.html
 
 Josh Gordon ML series https://www.youtube.com/playlist?list=PLOU2XLYxmsIIuiBfYad6rFYQU_jL2ryal
  
  
   
 
 
 
 
 
   
   
   
   

