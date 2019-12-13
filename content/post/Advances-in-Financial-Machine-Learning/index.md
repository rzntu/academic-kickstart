---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Advances in Financial Machine Learning"
subtitle: ""
summary: "random notes"
authors: []
tags: []
categories: []
date: 2019-06-03T23:45:01+08:00
lastmod: 2019-07-03T23:45:01+08:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: "Smart"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
# Advances in Financial Machine Learning

This is a very practical book for the application of machine learning in quant trading. The most insighful point behind this book is the reasons that standard machine learning tools fail when applied to the field of finance. In addition, I will try to implement(or fork) some ideas in this book in the [github repo](https://github.com/rz0718/quant_models).

### PART1: DATA ANALYSIS

1. Term Structure:

      * The fair price of any position is the cost of hedging it, so if you can hedge something you can also price it. 
      * For financial futures such as index and bond ones, the interest rate is the main driver of the term structure shape that is less of a steep curve for financial curses than for deliverable ones.
      * Backwardation can be caused by seasonality, interest rate conditions or unusual storage cost situations and is not uncommon for softs and perishable commodities.