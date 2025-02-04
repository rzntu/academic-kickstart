---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "20 For Twenty"
subtitle: ""
summary: "random notes"
authors: []
tags: []
categories: []
date: 2020-01-08T21:54:22+08:00
lastmod: 2020-01-12T22:54:22+08:00
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

# Selected Papers from AQR Capital Management

Even AQR have not so decent performances during recent years, it is still meaningful to read some academic papers related to quant trading/markets.


## The Great Divide 

The most impressive sentence is **EMH is our North Star even if we often or always veer 15 degrees left or right of it.**

For efficient market hypothesis that the simple statement that security prices fully reflect all available information, there is always a debate. Here, AQR founders provide their own insights toward this debate. 

Firstly, they pointed out that to make any statement about market efficiency, you need to make some assertion of how the market should reflect information. Therefore, here is a joint hypothesis. For example, CAPM model defines that how prices are set. Therefore, we can not tell which of two ideas you are rejecting from the evidences. 

For the joint of CAPM and EMH, the microchallenges are value and momentum methods. Value can be the HML (High minus low) that goes long a diversified portfolio of high booktoprice ratios and short the one of low booktoprice ratios. Momentum can be trend-following. To reject the CAPM and EMH, two kinds of arguments have been proposed as:

1. risk: market beta is not the only source of risk. The higher expected return of cheap stocks is rational, as it reflects higher risk.

2. behaviorists: behavior biases cause prices to get too high or too low. For instance, investors may overextrapolate both good and bad news thus long too much or short too much.

The authors think this mix of risk and behaviorists is there. In their view, it is likely that at most times risk plays a significant role in expected return advantange seems like it is driven more by irrational behaviroal reasons. 

## My Top 10 Peeves

Ten statements against authors top 10 peeves related to investing are listed in the follow:

1. Volatility Is for Misguided Geeks; Risk Is Really the Chance of a "Permanent Loss of Cpital"y

In quant, voaltility is not how much the security is likely to move; it is how much it is likely to move versus the forcast of expected return. The quant apporach is to consider expected return and risk separately.

2. Bubbles, Bubbles, Everywhere, But not All Pop or Sink.

Bubble should indicate a price that no reasonable future outcome can justify. 

3. Had We but World Enough, and Time, using Three-Five Year Evaluation Periods Would still be a Crime.

Some arguments are: **Judgement** in portfolio and startegy selection and a consistent philosophy to be more equal partners with data. **Over three to five years**, pretty much everything has shown some systematic, if certainly not dramatic, tendency to mean revert. Therefore, not only are insufficient data often driving our decisions, but the data we have are often used with the wrong sign.

Some comments: but the US market is strong in almost ten years. 


## Buffett's Alpha

In this paper, they did a very detailed empirical analysis of Buffett's results to hack the investment style. They are trying to replicate it in an systemmatic way. 
 
1. This paper suggest that Buffett’s success is neither luck nor magic but is a reward for a successful implementation of value and quality exposures that have historically produced high returns. 

2. Buffett applies a lverage of about 1.7 to 1.

3. Stock-selection is the key: buy stocks that are safe (with low beta and low volatility), cheap (i.e., value stocks with low price-to-book ratios) and of high quality (profitable, stable, and growing stocks with high payout ratios)

4. Although optimistic asset managers often claim to be able to achieve Sharpe ratios above 1 or
2 and many chief investment officers seek similarly high performance numbers, our results
suggest that long-term investors might do well to set a realistic performance goal and brace
themselves for the tough periods that even Buffett has experienced. Indeed, because Buffett became one of the richest people in the world with a **Sharpe ratio of 0.79**, most investors should seek to actually deliver a Sharpe ratio somewhere between this number and the
market’s Sharpe ratio, which was around 0.5 during this sample period, rather than making
suboptimal investments in a futile attempt to consistently reach a much higher number


