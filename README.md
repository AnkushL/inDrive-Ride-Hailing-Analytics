# inDrive Ride-Hailing Data Analysis

## Project Description

This project provides a comprehensive data analysis of inDrive's ride-hailing booking operations. The primary goal was to extract actionable insights from booking, cancellation, and performance data to identify key trends, understand operational efficiencies, and propose data-driven recommendations for improvement.

The analysis covers:
* Overall booking performance and status distribution.
* Detailed breakdown of customer and driver initiated cancellations.
* Revenue generation and payment method preferences.
* Performance metrics across different vehicle types.
* Customer and driver rating analysis.

## Dataset

The core of this project is the `Bookings.csv` dataset, which contains detailed information on individual ride bookings, including:
* `Date` and `Time` of booking
* `Booking_ID`, `Customer_ID`
* `Booking_Status` (Success, Canceled by Driver, Canceled by Customer, Driver Not Found)
* `Vehicle_Type`
* `Pickup_Location`, `Drop_Location`
* `V_TAT` (Vehicle Turnaround Time), `C_TAT` (Customer Turnaround Time)
* `Canceled_Rides_by_Customer`, `Canceled_Rides_by_Driver` (reasons for cancellation)
* `Incomplete_Rides`, `Incomplete_Rides_Reason`
* `Booking_Value`, `Payment_Method`
* `Ride_Distance`
* `Driver_Ratings`, `Customer_Rating`

## SQL Database Structure & Queries

The `indrive_project.sql` file defines the database schema and includes various SQL queries (views) used to extract specific insights from the `bookings` table. These queries were instrumental in preparing the data for analysis and visualizing key metrics.

Examples of queries include:
* Retrieving all successful bookings.
* Calculating average ride distance per vehicle type.
* Identifying top customers by number of rides.
* Analyzing reasons for driver and customer cancellations.
* Calculating total booking value for successful rides.

## Power BI Dashboards

Interactive dashboards were developed in Power BI to visualize the key findings and provide a dynamic view of the data. The dashboards are structured into the following sections:

1.  **Overall Dashboard:** Provides a high-level overview of total bookings, booking value, and booking status distribution, along with ride volume trends over time.
    * ![Overall Dashboard](![slide1](https://github.com/user-attachments/assets/2be06176-1e1a-402f-a814-e58de8ef14d1))
2.  **Vehicle Type Dashboard:** Breaks down booking value, successful booking value, average distance, and total distance by vehicle category.
    * ![Vehicle Type Dashboard](![slide2](https://github.com/user-attachments/assets/481d2b78-ed0e-455b-9675-446fe0eb2c64))
3.  **Revenue Dashboard:** Visualizes revenue distribution by payment method, identifies top customers, and shows revenue trends over time.
    * ![Revenue Dashboard](![slide3](https://github.com/user-attachments/assets/4ac30166-c15e-4d13-aad2-dab5b2e3a465))
4.  **Cancellations Dashboard:** Focuses on cancellation rates and the specific reasons behind both customer and driver initiated cancellations.
    * ![Cancellations Dashboard](![slide4](https://github.com/user-attachments/assets/ac3988dc-a150-40db-8428-568f77116585))
5.  **Ratings Dashboard:** Presents average driver and customer ratings across different vehicle types.
    * ![Ratings Dashboard](![slide5](https://github.com/user-attachments/assets/58e047e1-8105-4559-86e6-0862113d7ace))


## Key Findings & Insights
  1. Overall Booking Performance:
      The dataset comprises 20,407 total bookings, generating a total booking value of 7 million (currency assumed).
      Booking statuses reveal that 61.90% of rides were successful, while a significant 28.10% resulted in cancellations. The remaining bookings were categorized as 'Driver Not Found'. This high cancellation rate is a primary area for attention.
  2. Cancellation Dynamics:
      Customer-initiated cancellations are predominantly due to the "Driver not moving towards pickup location" (estimated ~55-60% of customer cancellations), indicating potential issues with driver dispatch, real-time tracking accuracy, or driver behavior. Other reasons include "Driver asked to cancel" (~20-25%), "Change of plan" (~10-15%), and minor issues like "AC is not working" and "Wrong Address" (each ~5%).
      Driver-initiated cancellations are primarily attributed to "Personal & Car related issue" (estimated ~65-70% of driver cancellations), suggesting a need to investigate driver availability, vehicle maintenance, or personal emergencies impacting service. "Customer related issue" accounts for a smaller portion (~15-20%), with "Customer was coughing/sick" and "More than permitted people in the car" being less frequent.
  3. Revenue and Payment Methods:
      Total revenue from successful bookings stands at 6,900,234.
      Cash is the dominant payment method, accounting for the largest share of revenue. This highlights a strong preference for traditional payment, which might impact digital payment adoption strategies and reconciliation processes. UPI follows as the second most popular method, with Credit Card and Debit Card usage being comparatively low.
  4. Vehicle Type Performance:
      Bike and E-Bike categories exhibit the highest successful booking values, indicating strong demand and efficient service in these segments.
      The "Mini" vehicle type shows a significantly lower average ride distance (10.00 units) compared to other categories (which average around 24-25 units). This suggests "Mini" vehicles are primarily used for shorter trips, which could influence pricing strategies or fleet allocation.
Other vehicle types like Prime Sedan, Prime SUV, Prime Plus, and Auto show consistent performance in terms of average ride distance and booking value.
  5. Driver and Customer Ratings:
      Both driver and customer ratings are consistently high, averaging around 4.0 out of 5.0 across all vehicle types. This indicates a generally positive service experience when rides are successfully completed, reflecting well on driver professionalism and customer satisfaction.

## Recommendations

  * Address High Cancellation Rate: Investigate root causes for "Driver not moving towards pickup location" (e.g., driver incentives, navigation issues, dispatch logic) and "Personal & Car related issue" (e.g., driver support, vehicle maintenance programs).
  * Promote Digital Payments: Explore incentives or user-friendly features to encourage greater adoption of UPI, Credit Card, and Debit Card payments, reducing reliance on cash.
  * Optimize Mini Vehicle Strategy: Leverage the "Mini" vehicle's suitability for shorter trips by optimizing pricing or targeting specific short-distance routes/customer segments.
  * Maintain Service Quality: Continue monitoring and maintaining the high standards of driver and customer ratings to ensure sustained satisfaction.

## Technologies Used

* **Data Processing & Analysis:** Python (Pandas)
* **Database & Querying:** SQL (SQLite for local execution)
* **Data Visualization & Business Intelligence:** Microsoft Power BI

## How to View/Reproduce

To explore this project:

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/YourUsername/inDrive-Ride-Hailing-Analytics.git](https://github.com/YourUsername/inDrive-Ride-Hailing-Analytics.git)
    cd inDrive-Ride-Hailing-Analytics
    ```
2.  **Data:** Ensure `Bookings.csv` is in the project directory.
3.  **SQL Analysis:**
    * You can load `Bookings.csv` into a SQLite database (or any other SQL database).
    * Execute the queries in `indrive_project.sql` to recreate the views and extract data.
    * *(If you used Python to run SQL, you can add instructions here for running your Python script.)*
4.  **Power BI Dashboards:**
    * Open the Power BI file (`.pbix` file, if you choose to upload it) in Power BI Desktop.
    * Ensure the data source is correctly linked to your `Bookings.csv` file.

## Future Enhancements

* **Time-Series Forecasting:** Implement forecasting models to predict future booking demand and identify seasonal trends.
* **Geospatial Analysis:** Analyze pickup and drop-off locations to identify high-demand areas, optimize driver positioning, and explore route efficiency.
* **Driver Behavior Analysis:** Deeper dive into driver activity, acceptance rates, and efficiency metrics.
* **Customer Segmentation:** Segment customers based on booking patterns, value, and cancellation history to tailor marketing and service.
* **Interactive Web Dashboard:** Develop a web-based interactive dashboard using libraries like Plotly or Dash for broader accessibility.

---
