Predicting MPG
========================================================
author: J Lea
date: 1/13/2015

Motivation
========================================================

Car Manufacturers need a quick and simple way to estimate the expected gas 
milage (MPG) of a vehicle they are planning to build. Our app quickly delivers 
this estimate based on the following criteria

- Number of Cylinders vehicle is expected to have
- The expected weight of the vehicle (in tons)

Method
========================================================
Create linear model using mtcars dataset


```r
model<-lm(mpg ~ cyl + wt, data=mtcars)
anova(model)
```

```
Analysis of Variance Table

Response: mpg
          Df Sum Sq Mean Sq F value  Pr(>F)    
cyl        1    818     818   124.0 5.4e-12 ***
wt         1    117     117    17.8 0.00022 ***
Residuals 29    191       7                    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

Use Case
========================================================
Auto maker is looking to estimate the difference in MPG based on different
engine sizes


```r
predict(model, data.frame(cyl=4, wt=3))
```

```
    1 
24.08 
```

```r
predict(model, data.frame(cyl=6, wt=3))
```

```
    1 
21.07 
```

```r
predict(model, data.frame(cyl=8, wt=3))
```

```
    1 
18.05 
```

Implication
========================================================
The application hosted [here](https://justindlea.shinyapps.io/dataproducts/) can be used by automakers across the globe to get a 
rough estimate of how changes to the weight and engine size of their prospective
vehicles will affect gas mileage
