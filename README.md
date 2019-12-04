# Radial Basis Function Network for Classification
 RBF Network for Classification

Implementation of Radial Basis Function Network for Classification of "Swiss Roll" Dataset (Can be used for any other data)

The Dataset file is Data.txt (The actual data used in program is Shuffled_Data.txt which is a shuffled version of the original)
Data has 4 classes and 800 samples for each class.

There are a number of parameters and options that can be decided on by the user through the GUI:

 - The Kernel Function (Gaussian, Multiquadratic, Inverse-Multiquadratic, Logarithmic)
 - Centroid selection method (K-Means, Random)
 - Training algorithm (Least Minimun Squares, Recursive Least Squares)
 - The value of Parameter Lambda in RLS training method
 - The minimum and maximum number of clusters
 - Changing the Functions from Radial Basis Function to Elliptical Basis Functions (using Elliptical Symmetry) through option EBF
 - The division ratios for splitting the data into training, validation, and test sets
 
The figure on the left shows the train and test error rates for different number of centeroids.
If the selected training method is RLS, Train and Test error rates for the number of training samples is plotted on the right side.
Minimum test and train rates during training and the training and testing time are displayed at the end of training
