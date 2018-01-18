## Includes code I wrote for specific assignments 

- General Assignments; larger projects will be in another repo.
  These are from courses: 
  - Coursera Python Data Analysis 
  - Coursera Data Science Maths
  - Coursera Python Data Representations
  - Udacity's Data Analyst Nanodegree
  - DataCamp 'Intro to SQL' course

## Set Up
- Local is set up as standard
- Cloud9 set up

```
## to start up notebook
ipython notebook --ip=0.0.0.0 --port=8080 --no-browser
## use token to validate
## this is in the cloud publicly, so be careful what is in here
## to see notebook->https://instancename(topfolder)-username.c9users.io
```
## Types of Data
- XML
- JSON
- CSVs
- WebScraped data

## Regularly Used Functions

- import libraries

```
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
%matplotlib inline
```

- read in data 

```
df = pd.read_csv('data.csv')
```
- rename unnamed column

```
df = df.loc[:, ~df.columns.str.contains('^Unnamed')]
```



## Notes
- Binomial Distribution
```
n!
-----
k!(n-k)!
```

## Normalization

- Normal distribution with mean and variance 
```
Area under curve

  1
----
(2 * pi * (sigma^2))^(1/2)
```
## SQL stuff

- unique values

```
SELECT DISTINCT x
FROM y;
```

- count distinct

```
SELECT COUNT(DISTINCT x)
FROM y;
```

## Jupyter stuff

- draw a random number (n) of samples from data

```
randomnum = np.random.choice(data, n)
```

- calculate the mean of that sample

```
randomnum.mean()
```

- calculate the variance

```
np.var(randomnum)
```

- calculate standard deviation

```
np.std(randomnum)
```

- for looping through and appending sample data in array

```
arr = []
# get a sample of 20 random draw from data
for i in range(100000): 
    # 10000 generated values, append
    sample = np.random.choice(data, 20)
    #  append the mean for each sample mean
    arr.append(sample.mean()) 
```

## Visualization using Matplotlib

```
import matplotlib.pyplot as plt
%matplotlib inline

# plot histogram of arr
plt.hist(arr);
```
## Concepts

## Bootsrapping 
- Bootstrapping is sampling with replacement

## Hypothesis Testing

## Confidence Intervals

## Bonferroni Correction

## P-values 


## Libraries
- import xml.etree.ElementTree
- prettyprint
- xlrd
- pandas
- numpy
- Beautiful Soup

# DataGraphs
data and graphs

- Statistics
- Python
- Graphs, etc

## Skills

- SQL 
- R (ggplot, etc)
- Python (pandas, numpy, scipy, etc)
- Mongo DB

## Concepts

- Simpson's Paradox 

## Notes from 

- Data Science Maths
- Bayesian Statistics


