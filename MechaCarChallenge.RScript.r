
> View(df)
> lm(vehicle_length ~ mpg, df)

Call:
lm(formula = vehicle_length ~ mpg, data = df)

Coefficients:
(Intercept)          mpg  
   11.43247      0.07949  

> summary(lm(vehicle_length ~ mpg,df))

Call:
lm(formula = vehicle_length ~ mpg, data = df)

Residuals:
    Min      1Q  Median      3Q     Max 
-2.7607 -1.0762 -0.2082  0.8851  3.2956 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 11.43247    0.71170  16.064  < 2e-16 ***
mpg          0.07949    0.01492   5.326 2.63e-06 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.627 on 48 degrees of freedom
Multiple R-squared:  0.3715,	Adjusted R-squared:  0.3584 
F-statistic: 28.37 on 1 and 48 DF,  p-value: 2.632e-06

> df_2 <- read.csv(file='Suspension_Coil.csv')
> library(tidyverse)
-- Attaching packages -------------------------------------------------------------------------------- tidyverse 1.3.1 --
v ggplot2 3.3.5     v purrr   0.3.4
v tibble  3.1.4     v dplyr   1.0.7
v tidyr   1.1.4     v stringr 1.4.0
v readr   2.0.2     v forcats 0.5.1
-- Conflicts ----------------------------------------------------------------------------------- tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
> total_summary <- df_2 %>% summarize(mean = mean(PSI)
+ meadian = median(PSI)
Error: unexpected symbol in:
"total_summary <- df_2 %>% summarize(mean = mean(PSI)
meadian"
> total_summary <- df_2 %>% summarize(mean = mean(PSI)
+                                     + median = median(PSI)
Error: unexpected '=' in:
"total_summary <- df_2 %>% summarize(mean = mean(PSI)
                                    + median ="
> total_summary <- df_2 %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
> View(total_summary)
> 
> lot_summary <- df_2 %/% group_by(Manufactoring_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
Error in group_by(Manufactoring_Lot) : 
  object 'Manufactoring_Lot' not found
> > View(total_summary)
Error: unexpected '>' in ">"
> lot_summary <- df_2 %/% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
Error in group_by(Manufacturing_Lot) : 
  object 'Manufacturing_Lot' not found
> lot_summary <- df_2 %/% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
Error in group_by(Manufacturing_Lot) : 
  object 'Manufacturing_Lot' not found
> lot_summary <- df_2 %/% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
Error in group_by(Manufacturing_Lot) : 
  object 'Manufacturing_Lot' not found
> lot_summary <- df_2 %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
> > View(total_summary)
Error: unexpected '>' in ">"
> lot_summary <- df_2 %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), Var=var(PSI), dev=sd(PSI))
> View(lot_summary)
> 
> 
> Taylor
Error: object 'Taylor' not found
> 
> ?t.test()
> t.test(df_2$PSI, 1500)
Error in t.test.default(df_2$PSI, 1500) : not enough 'y' observations
> t.test(df_2$PSI, mu-1500)
Error in t.test.default(df_2$PSI, mu - 1500) : object 'mu' not found
> View(df)
> View(df_2)
> t.test(df_2$PSI, mu=1500)

	One Sample t-test

data:  df_2$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 

> Lot1 <- subset(df_2,Manufacturing_Lot="Lot1") t.test(lot1$PSI,mu=1500)
Error: unexpected symbol in "Lot1 <- subset(df_2,Manufacturing_Lot="Lot1") t.test"
> Lot1 <- subset(df_2,Manufacturing_Lot="Lot1")
> Lot2 <- subset(df_2,Manufacturing_Lot=="Lot2")
> Lot3 <- subset(df_2,Manufacturing_Lot="Lot3")
> t.test(lot1$PSI,mu=1500)
Error in t.test(lot1$PSI, mu = 1500) : object 'lot1' not found
> t.test(Lot1$PSI,mu=1500)

	One Sample t-test

data:  Lot1$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 

> 
> t.test(Lot2$PSI,mu=1500)

	One Sample t-test

data:  Lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

> t.test(Lot3$PSI,mu=1500)

	One Sample t-test

data:  Lot3$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
