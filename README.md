# MechaCar_Statistical_Analysis

## Deliverable 1
### Linear Regression to Predict MPG
Import DF

![create DF](https://user-images.githubusercontent.com/85597990/135775949-d8e23167-b4ae-4481-b1d1-cf69c32a1100.png)

Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

![Screenshot 2021-10-03 185226](https://user-images.githubusercontent.com/85597990/135777663-7a2c9b2c-dc74-40f1-a36f-97542eb58ce1.png)

Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

![Screenshot 2021-10-03 185447](https://user-images.githubusercontent.com/85597990/135777719-58070ec3-0ca9-486c-a86e-f8b22508c9a2.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- 
Is the slope of the linear model considered to be zero? Why or why not?
-
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
-

#### Deliverable 2
##### Summary Statistics on Suspension Coils
Import second CSV to dataframe

![Screenshot 2021-10-03 193912](https://user-images.githubusercontent.com/85597990/135779181-c74b05e0-001c-4fd4-bdae-b8c82e3fec33.png)

Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![Screenshot 2021-10-03 201617](https://user-images.githubusercontent.com/85597990/135780589-427df1e0-9f27-4e7f-92a7-687db5052aca.png)

![Screenshot 2021-10-03 193912](https://user-images.githubusercontent.com/85597990/135780593-2f9b6914-d43d-48e8-8239-560474421193.png)

Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![Screenshot 2021-10-03 203430](https://user-images.githubusercontent.com/85597990/135781506-7314252b-5b47-434b-a713-290d1ba9168c.png)

![Screenshot 2021-10-03 203441](https://user-images.githubusercontent.com/85597990/135781511-2d2f392c-35f3-44b7-a42c-561e872075fc.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
-
