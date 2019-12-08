---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Following the Trend"
subtitle: ""
summary: "random notes"
authors: []
tags: []
categories: []
date: 2019-06-08T21:54:22+08:00
lastmod: 2019-07-08T22:54:22+08:00
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
## Diversified Managed Futures Trading

### CH2: Futures Data and Tools

1. Term Structure:

      * The fair price of any position is the cost of hedging it, so if you can hedge something you can also price it. 
      * For financial futures such as index and bond ones, the interest rate is the main driver of the term structure shape that is less of a steep curve for financial curses than for deliverable ones.
      * Backwardation can be caused by seasonality, interest rate conditions or unusual storage cost situations and is not uncommon for softs and perishable commodities.

2. Terms to describe the price change:

      * Points: the smallest price increment change that on the left side of the decimal point  
      * Ticks: A point is composed of ticks. Tick size deterimes that how many ticks it taks to increase the point. E.g. four ticks to a point is the tick size of 0.25
      * Point Value * tick size = tick value
      * five contracts at 100 and sell them at 110 with a point value of 10, then the profit is 10\*5\*10*1=500

3. Futures Sectors:
      * Agricultural:
              relatively low internal correlation but small market
      * Non-agricultural Commodities:
              Oil and natural Gas, Gold, so on. For natural gas, it is persistently sharp contango (highly complicated and nigh impossible storage and the seasonal demand patterns)
      * Currencies:
              Be aware of the danger of stacking up USD risks. For example, long the CHF, long the euro, yen and son. They are all shorting USD.  
      * Equities:
              * Short side of equities usually has a very different profile from the long side. 
              * When equiteis are in bull market, they can move slowly upwards for long periods of time. While on the downside, equity moves tend to be swifter and more violent.
              * Short side of CTA on equities struggle a lot. Think sharp drop-downs followed by v-shaped reversals.

      * Rates:

### CH4: Two Basic Trend-following Strategies

1. Correlations between strategies:

      Compute the log return ln(pi/pi-1)

2. The secret sauce is not in the buy and sell rules:

      The author only presented two very simple strategies:
      * Long if the 50-day MA is above the 100-day MA, short if the 50-day MA is less than the 100-day MA.
      * Long if the closing price is the highest close price in the past 50 days and short if the closing price is the lowest close price.
      * Position: (0.2% \* Equity) / (ATR \* pointValue) = number of contract
      * With stop loss criteria: if long position, it will be closed if it has moved three ATR units down from its highest price after this trade. If short position. It will be closed if it has moved three ATR units lower from its lowest closing price since the position was opened. 
      * Add a trend filter which makes sure that we only trade in the direction of the main trend and that we do not get whipsawed by going in and out of positions every couple of days. 

### CH5-6: Depth Analysis of Trend-Following Performance

Long side showing a smoother upwards profile and the short side a more dynamic burst-style return. The short side is far less profitable and in fact often ends up losing money for extended periods of time; but it still adds value by acting a  volatility stabiliser as well as providing substantial gain in extreme market situations.
