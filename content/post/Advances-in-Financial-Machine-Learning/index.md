---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Advances in Financial Machine Learning"
subtitle: ""
summary: "random notes"
authors: []
tags: []
categories: []
date: 2019-11-08T21:54:22+08:00
lastmod: 2019-12-29T22:54:22+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---

## Advances in Financial Machine Learning

Lots of insights on practical aspects of machine learning in finances have been shared in this book. Some of them are quite useful. But the author sometimes tend to make the simple or very intuitive problem/solution seems very complex and fuzzy. In this random notes, I may write down some of my random ideas.

### CH2: Financial Data Structures

The main topic in this chapter is that how do we form the bar.  Usually, the charts/technical analysis are performed upon the time-sampled bar. Each bar means the information sampled from a fixed interval. Then, the drawback is that time bars oversample information during low-activity periods and undersample information during high-activity periods. The low-activity and high-activity may refer to the trading volume. Then, several information-driven bars have been proposed. The core idea is that we want to sample the information evenly. Different information measures lead to different methods. For example, the volume, the volume*price, the number of ticks. And **it is claimed that sampling as a function of trading activity allows us to achieve returns closer to IID Normal**. (I am not sure why is it) 

At last, I think this bar sampling technique is one of representation learning. In machine learning, how do we convert the unstructured data into structured one. Here, it do the same thing. Time series to the bar that be stored in a csv format.

From my own experiments, MACD applied on some information-driven bars have not shown good performance. I am not sure it is the problems behind the technical analysis or the bars themselves.


### CH3: Labeling

How to define y in machine learning for trading strategy. The authors propose a triple-barrier methods, which involve some interesting ideas:

for example, we want to label one tradable product at time T. 

1. Define a maximum holding period N, then we will look at T: T+N

2. Based on the recent volatility, two horizontal lines are introduced indicating profit-taking and cut-loss lines.

3. The label will depend on the order of the touched lines. 

The advantage is that it consider the price change path instead of the absoulte change p(T+N) - p(T). However, the concern may that how do we define the horizontal lines. It involves some hyperparameters, which may be very tricky. In addition, it is also unsure that in which frequency, we should look at the touched lines. For example, if we label the data at 30 mins, we can use any time frequency higher than 30 mins to check which line will be touched firstly. 

At the same time, the meta-label was also introduced by the author. At the same time, in ml research community, meta-learnin is also popular. The meta-label idea is that we add second layer label/classifier. The first layer will be any trading strategy, which will do timing/generate buy sell points. Then, the second layer label will be the size betting. The second layer label will be only 1 and 0, which means if the trade we entered at time T, can we have profit. The classifier may have the prob. output. This continus and normalized output can be the size we predict. 


### Ch11: The Dangers of Backtesting

This chapter is talking about the issues of data leakage in the context of trading algorithms development. Some sentences may be highlighed in case I made the same mistakes in my daily job. 

1. The point of a backtest is a sanity check on a number of variables, including bet sizing, turnover, resilience to costs, and behavior under a given scenario.

2. The maddening thing about backtesting is that, the better you become at it, the more likely false discoveries will pop up. 

3. The purpose of backtesting is to **discard bad models, not to improve them**.

4. What makes backtest overfitting so hard to access is that the probability of false positive changes with every new test conducted on the same dataset.

One of measures named Probability of Backtest Overfitting was proposed. The input is a return matrix: one dimension is time axis and the other dimension is the algorithms. The idea is that based on the training period, the best algo should perform above the median in the testing period. And simialr to cross-validation, PBO fakely generated lots of pairs of training and testing. Then, based on a large number of simulations, the probability score could be inferred. 
