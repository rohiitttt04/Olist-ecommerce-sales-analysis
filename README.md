# Olist-ecommerce-sales-analysis
Data Analytics project using SQL and Power BI to analyze Olist E-commerce sales, customer behavior, delivery performance, and payment trends.
Olist Store Analysis — Excel Dashboard

An interactive Excel dashboard (PivotTables + PivotCharts + slicers) built on the
Olist Brazilian e-commerce dataset, covering order volume, delivery performance,
regional spend, and the link between shipping time and customer satisfaction.

## Dashboard Preview

![Excel Dashboard](dashboard_screenshots/excel_dashboard.png)

## Headline KPIs

| Metric | Value |
|---|---|
| Total Payment | ₹70,66,631.37 |
| Average Order Value | ₹206.95 |
| On-Time Delivery Rate | 94% |
| Avg. Shipping Days — Pet Shop category | 11 days |
| Avg. Product Price — São Paulo customers | ₹107.91 |

## KPI Breakdown & Insights

**1. Weekday vs Weekend Order Volume**
Weekday orders: 76,594 · Weekend orders: 22,847
→ About 77% of all orders are placed on weekdays, with demand dropping sharply on weekends.

**2. Payment Volume by City**
São Paulo generates the highest total payment value of any city, with Rio de Janeiro a distant second — consistent with these being Brazil's two largest metro markets.

**3. São Paulo Customer Spend**
Average order item price: ₹107.91 · Average payment value: ₹153.74
→ Payment values run well above item price, reflecting shipping and installment charges added at checkout.

**4. Shipping Days vs Review Score**

| Review Score | Avg. Shipping Days |
|---|---|
| 1 ★ | 20.9 |
| 2 ★ | 16.2 |
| 3 ★ | 13.8 |
| 4 ★ | 11.8 |
| 5 ★ | 10.2 |

→ A clear inverse relationship: the longer an order takes to arrive, the lower the review score it receives. This is the strongest lever in the dataset for improving customer satisfaction — cutting shipping time from 1-star to 5-star levels roughly halves delivery time.

**5. Product Value by Category**
Housewares, watches & gifts, and cool stuff are the top revenue-generating categories by total product price, while auto and garden tools contribute the least.

## Tools Used
Excel — PivotTables, PivotCharts, slicers, KPI cards
