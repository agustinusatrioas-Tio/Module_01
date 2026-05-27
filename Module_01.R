#------------------------------------#
# MB5370: Introduction to Programming
# AGUSTINUS SATRIO SUPOYO
# February 2025
# Workspace:
#"C:\Users\shahe\Documents\R\Module_01\Module_01.R"
#------------------------------------#

#------------------------------------#
# Workshop 01. Introduction ####
# Getting started ####
# This section introduces us to R by using it as a simple calculator.
2+1
1:30
6*
  2
# Variables and Assignment ####
# This section focuses on understanding how data is stored in R and why that matters.

age<- 25
first_name <-'Bill'
age+1
age+age



Age <- 41 # cases matter
#We can technically circumvent this limitation, by using `back ticks`:
`age bob`<-25 # no spaces, but with back ticks

# Agustinus Satrio Supoyo
# MB5370 Techniques in Marine Science 1
# Exercise 1 - Basic R Calculations
# Date: 20 May 2026
15+25.1+20.25
total<-15+25.1+20.25
Number2<-10
total+Number2
final_result <-total+Number2


second_number<-15+23+22
total+second_number

#function of round and floor
years_old <-25.7
round(years_old)#round up
floor(years_old)#round down

#function to specify how many decimal places you want to round a number to
years_old<-25.765
round(years_old,2)#comma after the object to specify argument adn decimal

?round # go to help
args(round)

# Exercise: Using paste() to create a sentence

name <- "Agustinus"
age <- 27.5

sentence <- paste(name, "is", age, "years old.")

print(sentence)

#debugging
# Misconceptions
# variables in programs do not work the same way as they do in spreadsheets
grade<-55
total <-grade+10
print (total)
grade <-90
print(total)
total<-grade+10
print(total)

#what will this code do?
p<-2
z<-5
out<-p*z # What should the value of out be?
print(out) ## What is the value of out? Is it the same as expected?

#learn to read errors messages
#debugging errors
#out <-p*a # undefined variable. 
out <-p*z
# Testing

x <- 1
is.character(x)
is.numeric (x)
#Exercise of find the errors
my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro", #there is come in cuatro, i added the comma
             "cinco")
print (my_quiz) #typo in quis, should be quiz
str(my_quiz) #str used for seeing the object structure
length(my_quiz) #there is no function of len in r, and changed to be length

# Data Types Exercise
#1. Character (text)
my_character_variable<-"Agustinus"
class(my_character_variable)

#2. Numeric (Decimal number)
my_numeric_variable <- 4.2
class(my_numeric_variable)

#3. Integer 
my_integer_variable <- 10L
class(my_integer_variable)

#4. Logical (true/false)
my_logical_variable <-TRUE
class(my_logical_variable)

##Data structures##
list("uno","dos","tres")

#Example of vector numeric
y<-c(1,2,3)
#Example of vector character
z<-c("Sarah","Tracy","Jon")

#check type of vector
class(y)
class(z)

#List
x<-list(1,"a",TRUE)
#index
x[[2]]
x[[3]]
x[[1]]

##Data Frames and Tibbles##
my_dataframe <- data.frame(
  no = c(1, 2, 3),
  name = c("Tracey", "John", "Pete"),
  passed = c(TRUE, FALSE, TRUE)
)

my_dataframe

str(my_dataframe)   #see the data structure

#change the type of data collom
my_dataframe$no <-as.factor(my_dataframe$no)
str(my_dataframe)
#all the collom must have the same element
#example
c(1,2,3)
c("A","B","C")

#if there is missing data, we can use (NA)
#example
height <-c(170,NA,180)
#to check the function of NA
is.na(height)
#to remove row that contain NA
na.omit(height)

#How to import the data
read.csv()
readxl::read_excel()

#tibble
library(tibble)
my_tibble<-tibble(
  no= c(1,2,3),
  name= c("Tracy","John","Pete"),
  passed= c(TRUE,FALSE,TRUE))
my_tibble #to see the tibble

#Packages and libraries#
install.packages("tidyverse") #download and instal the packages
library(tidyverse) #load the packages

#install.packages("ggplot2") added # to deactive the instalation

#install.packages(c("ggplot2","tidyr","dplyr","terra")) #to instal multiple packages
?ggplot  #added ? to get description about the packages

#example of good header script
#------------------------------------#
# MB5370: Introduction to Programming
# Agustinus Satrio Supoyo
# May 2026
# This script contains code from Workshop 1.
#------------------------------------#

#load packages
#library(tidyverse)

#separate the script into a part with comment
#example
# 1. Import data
# 2. Clean data
# 3. Analyse data
# 4. Plot results

#class discussion
# 1. Read the .csv file into R
# 2. Inspect the data structure
# 3. Filter the target species
# 4. Summarise abundance
# 5. Create the plot
# 6. Save the figure