# Google Data Analytics Capstone Project

## Introduction
This repository contains the scripts used for producing the results for the Google Data Analytics Capstone Project where the student is asked to complete the Bellabeat data analysis case study. In this case study, the goal is to identify the trends in smart device usage to help influence Bellabeat marketing strategy.

The dataset used for this study came from https://www.kaggle.com/datasets/arashnic/fitbit.

## Analysis Strategy
In this analysis, the programming language R was used mainly to clean up the dataset, such as removing data than contain NAN values and converting dates to the versatile datetime format (see the `RScripts` folder). After the data are properly processed, they are then uploaded to BigQuery, where useful information is extracted using SQL. The SQL scripts used in this project are stored in the `SQLScripts` folder. The output from each `SQLScript` is a table of information relevant to our research question.

To illuminate the findings, visualizations such as line plots, bar charts, and pie charts are created. The results are summarized in the `summaryOfAnalysis.pdf` file.
