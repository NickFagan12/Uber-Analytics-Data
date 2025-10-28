# 🚗 Uber Data Analytics Project

## 📊 Project Overview
This project explores and visualizes Uber ride data to uncover key insights about ride patterns, customer behavior, driver performance, and payment trends. The goal is to use data analytics and visualization techniques to improve operational efficiency and understand factors influencing customer satisfaction.

The dataset used in this project was obtained from **[Kaggle: Uber Data Analytics Dataset]**, and it was cleaned, analyzed, and visualized using **Tableau Public** and **SQL**.

---

## 🧾 Dataset Information
- **Source:**   https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard
- **Data Format:** CSV file  
- **Number of Records:** ~1,000–5,000 rides (depending on version)  
- **Key Columns:**
  - `Vehicle Type`
  - `Time`
  - `Date`
  - `Booking ID`
  - `Customer ID`
  - `Pickup Location`
  - `Drop Location`
  - `Driver Ratings`
  - `Customer Ratings`
  - `Ride Distance`
  - `Booking Status`
  - `Payment Method`
  - `Booking Value`
  - `Cancelled Rides by Driver`
  - `Cancelled Rides by Customer`
  - `Incomplete Rides`
  - `Average VTAT`
  - `Average CTAT`
  - `Reason For Cancelling by Customer`
  - `Driver Cancellation Reason`
  - `Incomplete Rides`
  - `Incomplete Ride Reason`

---

## 🧹 Data Cleaning & Preparation
Data preparation was performed in **Tableau Prep Builder** and **Excel**, with key steps including:

1. **Removing duplicates** and irrelevant columns.  
2. **Replacing null values** with meaningful labels (e.g., `N/A` or `0`).  
3. **Standardizing payment methods** (e.g., combining “Credit Card” and “Debit Card” categories).  
4. **Creating calculated fields** for better insights:
   - `Total Cancelled Rides`
   - `Customer Satisfaction Index`
   - `Driver Performance Score`
   - `Revenue per Ride`

---

## 📈 Tableau Dashboards
All dashboards were built in **Tableau Desktop Public Edition**, focusing on actionable business insights.

###1️⃣ Total Rides and Booking Value Overview
- **Purpose:** Analyze overall ride volume and total booking values by payment method.
- **Key Insight:** UPI and Cash payments dominate the transaction volume, suggesting user preference for fast, direct payments.

### 2️⃣ Customer Satisfaction Dashboard
- **Purpose:** Compare customer ratings and cancellation patterns.
- **Key Insight:** Higher cancellation rates correlate with lower customer satisfaction scores.

### 3️⃣ Driver Performance Dashboard
- **Purpose:** Visualize driver ratings vs. cancelled rides to assess reliability.
- **Key Insight:** Most cancellations stem from a small subset of drivers with lower ratings.

### 4️⃣ Revenue and Payment Analysis
- **Purpose:** Examine booking value and revenue trends across payment types.
- **Key Insight:** Credit/Debit card users tend to have higher booking values per ride.

### 5️⃣ Operational Metrics
- **Purpose:** Evaluate metrics like CTAT (Customer Time at Arrival) and VTAT (Vehicle Time at Arrival).
- **Key Insight:** Reducing VTAT can improve overall customer satisfaction and repeat bookings.

---

## 🧠 Key Insights & Findings
- **Driver reliability** strongly impacts overall platform ratings.  
- **Cancellation patterns** reveal operational inefficiencies during peak hours.  
- **Digital payment adoption** is increasing, particularly through UPI.  
- **Short-distance rides** show higher frequency but lower revenue contribution.  
- **Customer ratings** are influenced by both time-to-pickup and fare accuracy.

---

## 🧩 Tools & Technologies
| Tool | Purpose |
|------|----------|
| **Tableau Public** | Data visualization and dashboard design |
| **Tableau Prep Builder** | Data cleaning and preparation |
| **Excel** | Initial data review and preprocessing |
| **SQL (optional)** | Querying and aggregating raw data |

---

## 📷 Sample Visualizations
- Total Rides & Booking Value by Payment Method  
- Driver Performance by Rating & Cancellations  
- Customer Satisfaction vs. Cancellation Rate  
- Ride Distance vs. Booking Value  



---

## 🚀 Future Improvements
- Integrate real-time ride data via API for dynamic analysis.  
- Use predictive analytics to forecast cancellation risk.  
- Build machine learning models to recommend optimal driver assignments.  
- Automate daily KPI updates through Tableau Server or Power BI.

---

## 👨‍💻 Author
**Name:** Nicholas Fagan  
**Role:** University Undergraduate    
**GitHub:** NickFagan12  
**Email:** nickpf2001@yahoo.com  

---

## 🏁 Conclusion
This project demonstrates the end-to-end data analytics workflow — from data cleaning to dashboard storytelling — providing valuable business insights that can improve customer experience and driver performance within Uber’s ecosystem.