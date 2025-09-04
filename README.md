# 🚚 Delhivery Delay Prediction & Travel Time Optimization 

![Logo](https://commons.wikimedia.org/wiki/File:Delhivery_Logo_(2019).png#/media/File:Delhivery_Logo_(2019).png)

A **real-world data analytics & machine learning project** on Delhivery logistics trips, delivering insights into **delay risks, optimized travel times, and route-level bottlenecks** using **SQL, Python (ML), and Power BI**.  

---

## 📸 Dashboard Preview  

Here’s a snapshot of the **Delhivery Delay & Travel Time Dashboard** built in Power BI:  

![Dashboard Preview](Dashboard%20Preview.png)  

---

## 📌 Problem Statement  
Logistics providers like Delhivery face challenges in:  
- Predicting **which routes are delay-prone**  
- Optimizing **travel time estimation** (OSRM underestimates)  
- Ensuring **on-time delivery & SLA commitments**  

👉 This project solves these by building an **ML-driven predictive system** that:  
- Classifies shipments as **Delayed / Not Delayed**  
- Predicts **actual travel time vs OSRM estimates**  
- Provides **Power BI dashboards** for operational visibility  

---

## 🚀 Solution Overview  
This project combines **SQL analysis, ML modeling, and BI dashboards** to deliver actionable insights:  

- **SQL** → Route delay profiling, time-of-day impact, distance correlation  
- **Python (ML)** → Logistic Regression (delay classification), Regression (ETA prediction)  
- **Power BI** → Route risk dashboards & model performance  
- **Business Insights** → Delay hotspots, SLA risk zones, accurate ETA estimation  

---

## 🛠️ Major Steps & Methodology  

### 📂 1. Data Collection & Overview  
- **Delhivery logistics dataset** (~144K trips) with trip times, routes, distances.  
- **Features:** trip_uuid, route_type, source/destination centers, OSRM vs actual metrics.  

### 🧹 2. Data Validation & Cleaning (SQL)  
- Removed invalid timestamps & missing values.  
- Derived **delay = actual_time - osrm_time**.  
- Grouped by **route type, source, destination**.  
- Identified **top 10 high-delay routes**.  

### 📊 3. Exploratory Data Analysis (EDA)  
- Avg delay ~ **42 mins across trips**.  
- Peak hour delays **25% higher**.  
- Top 5 source centers → **major contributors to delays**.  
- Long-haul routes = **highest time variability**.  

### 🤖 4. Machine Learning Models (Python)  

**a. Delay Prediction (Classification – Logistic Regression Balanced)**  
- Precision (Delay) = 1.00  
- Recall (Delay) = 0.97  
- Accuracy = **97%**  

**b. Travel Time Optimization (Regression)**  
- Average Actual time is **416.93 min**
- MAE = 43.91 mins  
- RMSE = 92.88 mins  
- SMAPE = 20.44%  
- Significantly improved ETA accuracy vs OSRM baseline.  

### 🌐 5. Dashboard & Visualization (Power BI)  
- Route type performance  
- Delay heatmaps by hour  
- Top 10 risky routes  
- OSRM vs ML travel time comparison  

---

## ⚙️ Tools & Technology Stack  

| Logo | Technology | Purpose |
|------|------------|---------|
| ![MySQL](https://img.icons8.com/color/48/000000/mysql-logo.png) | SQL (MySQL) | Data validation & aggregation |
| ![Python](https://img.icons8.com/color/48/000000/python.png) | Python (Pandas, Scikit-learn) | ML modeling & evaluation |
| ![Jupyter](https://img.icons8.com/fluency/48/000000/jupyter.png) | Jupyter Notebook | Model development workflow |
| ![Power BI](https://img.icons8.com/color/48/000000/power-bi.png) | Power BI | Dashboards & business reporting |
| ![GitHub](https://img.icons8.com/ios-glyphs/48/000000/github.png) | GitHub | Version control & portfolio showcase |

---

## 📊 Key Visualizations  

### Delay Distribution by Route Type  
<img src="https://github.com/abhiishek04/DELHIVERY-Supply-Chain-Optimization/blob/main/Distribution%20of%20routes%20by%20route%20type.png" width="800">  

### Average Travel Time by Hour of Day  
<img src="https://github.com/abhiishek04/DELHIVERY-Supply-Chain-Optimization/blob/main/Avg%20travel%20time%20by%20hour%20day.png" width="800">  

 ### Top 10 Most Delayed Routes  
<img src="https://github.com/abhiishek04/DELHIVERY-Supply-Chain-Optimization/blob/main/top%2010%20most%20delayed%20routes.png" width="800"> 

### Actual vs Predicted Time by Travel Time Estimation Model  
<img src="https://github.com/abhiishek04/DELHIVERY-Supply-Chain-Optimization/blob/main/forects.png" width="800"> 

---

## ✅ How the Problem Was Solved  
- Built an **SQL-based pipeline** for delay insights.  
- Applied **Logistic Regression (97% accuracy)** for delay classification.  
- Built **Regression model (SMAPE 20.44%)** for ETA optimization.  
- Delivered **Power BI dashboards** for leadership and ops teams. 

---

## 📈 Business Impact  
- **SLA Optimization:** Proactive risk flagging of delayed trips.  
- **ETA Accuracy:** Improved customer transparency vs OSRM.  
- **Operational Efficiency:** Focus on top 10 high-delay routes.  
- **Strategic Planning:** Identified high-variability routes for improvement.  

---

## Future Scope  
- Integrate **real-time GPS & traffic data**.  
- Deploy ML models as **APIs for live ETA updates**.  
- Extend framework to **cost optimization & fleet utilization**.  
- Add **dynamic rerouting engine** for live operations.  

---

## 🏁 Getting Started  
1. Clone this repo & install requirements (`requirements.txt`)  
2. Load SQL file → `delhivery_analysis.sql`  
3. Execute ML notebook → `supply_chain_optimization_models.ipynb`  
4. Explore predictions → `y_pred.csv`  
5. Open Power BI dashboard → `delhivery.pbix`  

---

## 📬 Contact & Resources  
- ![GitHub](https://img.icons8.com/ios-glyphs/24/000000/github.png) **GitHub:** https://github.com/abhiishek04/delhivery-delay-optimization  
- 📧 **Email:** info.abhisheksingh004@gmail.com  
- 💼 **LinkedIn:** [Abhishek Singh](https://www.linkedin.com/in/yourprofile/)  

---

✨ Developed as part of **Supply Chain Optimization – Data Science & ML Case Study**  
