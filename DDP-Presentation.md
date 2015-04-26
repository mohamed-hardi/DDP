Coursera Developing Data Products Project
========================================================
author: Mohamed Hardi
date: 6 Apr 2015

Project Summary
========================================================

This is a simple applcation to compute the Body Mass Index (BMI) of a person

Body Mass Index (BMI) is a simple index of weight-for-height that is commonly used to classify underweight, overweight and obesity in adults. It is defined as the weight in kilograms divided by the square of the height in metres (kg/m2). The following are the different classification standards:

BMI <18.5 : Underweight
BMI [18.5-25) : Optimal weight
BMI [25-30) : Overweight
BMI >=30 : Obese

Calculating BMI
========================================================
BMI Is computed using the simple formula:
BMI = Weight / (Height/100)^2.
The arbitrary value returned is the Index:


```r
weight <- 180
height <- 95
bmi <- weight/(height/100)^2
```

Checking BMI Against Classification
====================================

```r
bmifunc <- function(height, weight){
    bmi <- weight/(height/100)^2
    if(bmi < 18.5) "underweight"
    else if(bmi >= 18.5 & bmi < 25) "optimal weight"
    else if(bmi >= 25 & bmi < 30) "overweight"
    else "obese"
}
bmifunc(180,95)
```

```
[1] "overweight"
```
Project Hosted On Shiny
========================================================

To test out the project, you can access this on Shiny at the following link:

"http://mhardi.shinyapps.io/DDP-PROJECT/"



