# 🌍 World Life Expectancy – Analysis Summary

## 📌 Project Objective

This SQL exploratory analysis investigates global life expectancy trends and their relationship with economic and health indicators.

The objective is to:

- Identify long-term improvements in life expectancy  
- Examine global inequality patterns  
- Analyze the relationship between GDP and health outcomes  
- Explore time-based mortality behavior using window functions  

---

## 1️⃣ Life Expectancy Change Over 15 Years (Per Country)

<<img width="849" height="310" alt="image" src="https://github.com/user-attachments/assets/ad57bcf8-8717-4184-a7b3-c6485ce10970" />


### 🔎 Insight

This analysis measures the total change in life expectancy per country over time.

Key observations:
- Some countries show minimal improvement, indicating possible structural healthcare challenges.
- Others demonstrate steady and consistent progress.
- This metric helps identify stagnation versus growth in national health systems.

---

## 2️⃣ Global Average Life Expectancy by Year

<img width="358" height="602" alt="image" src="https://github.com/user-attachments/assets/ee415194-f570-4f8c-a636-d72846963752" />


### 🔎 Insight

The global average life expectancy shows a steady upward trend across the observed years.

This reflects:
- Improvements in healthcare systems
- Advances in medicine
- Better living conditions worldwide

No major structural declines are visible within the dataset period.

---

## 3️⃣ Average Life Expectancy vs GDP (Per Country)

<img width="339" height="332" alt="image" src="https://github.com/user-attachments/assets/491613cc-71dc-4333-9dde-98d2237bb6ce" />


### 🔎 Insight

A strong positive relationship is observed between GDP and life expectancy.

- High-income countries consistently rank among the highest in life expectancy.
- Economic strength appears to significantly influence healthcare quality and access.
- This sets the foundation for inequality analysis.

---

## 4️⃣ Comparing High vs Low GDP Countries

<img width="709" height="117" alt="image" src="https://github.com/user-attachments/assets/18998a2d-11e5-4766-be5a-a10ede4f10e4" />


### 🔎 Insight

When segmenting countries into economic tiers:

- High-GDP countries show significantly higher average life expectancy.
- Low-GDP countries experience noticeably lower health outcomes.
- The gap quantifies structural global inequality.

This demonstrates the power of conditional aggregation in SQL.

---

## 5️⃣ Life Expectancy by Development Status

<img width="711" height="162" alt="image" src="https://github.com/user-attachments/assets/c5e55335-481e-4ff3-92ec-a333f1c611fa" />


### 🔎 Insight

Developed countries average approximately 13 years longer life expectancy compared to developing countries.

This highlights:
- Structural health and economic disparities
- The importance of systemic development in public health outcomes

---

## 6️⃣ Correlation Between BMI and Life Expectancy

<img width="371" height="320" alt="image" src="https://github.com/user-attachments/assets/4dcf03ec-3408-4135-8635-ed6a6e1fc10d" />


### 🔎 Insight

The relationship between BMI and life expectancy varies significantly across countries.

This analysis:
- Explores health indicators beyond economic variables
- Suggests potential for further statistical modeling outside SQL

---

## 7️⃣ Rolling Sum of Adult Mortality Over Time

<img width="364" height="261" alt="image" src="https://github.com/user-attachments/assets/ce4c6539-e9cb-498c-809b-950ab4c71b5b" />


### 🔎 Insight

Using SQL window functions, we calculate cumulative adult mortality per country over time.

This enables:
- Longitudinal health burden tracking
- Identification of sustained mortality pressure
- Advanced analytical capability directly in SQL

---



# 🎯 Key Takeaways

- Global life expectancy has steadily increased over time.
- GDP strongly correlates with health outcomes.
- Significant inequality exists between developed and developing nations.
- SQL alone can support structured analytical reasoning and time-based insights.
