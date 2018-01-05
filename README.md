# Introduction
The obective of this project is to demonstrate the use of linear regression models which uses patient data to estimate the average medical care expanses based on an individuals demography.

# Data source

The dataset is a simulated dataset containing hypothetical medical expanses for patients in the US. The data was provided by Packt Publishing website. The dataset contains the following features:

• age: An integer indicating the age of the primary beneficiary (excluding
those above 64 years, since they are generally covered by the government).
• sex: The policy holder's gender, either male or female.
• bmi: The body mass index (BMI), which provides a sense of how over- or
under-weight a person is relative to their height. BMI is equal to weight (in
kilograms) divided by height (in meters) squared. An ideal BMI is within the
range of 18.5 to 24.9.
• children: An integer indicating the number of children/dependents covered
by the insurance plan.
• smoker: A yes or no categorical variable that indicates whether the insured
regularly smokes tobacco.
• region: The beneficiary's place of residence in the US, divided into four
geographic regions: northeast, southeast, southwest, or northwest.

# Summary 

Linear regression modelling was used to calculate the expected medical costs for various segments of the population. Because the relationship between the features and the target variable are well described by the estimated regression model, we are able to identify certain demographics, such as smokers and obese, who may need to be charged higher insurance rates to cover the higher-than-average medical costs.
