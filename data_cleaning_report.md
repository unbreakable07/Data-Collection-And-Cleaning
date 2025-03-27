# Data Cleaning Report

## Introduction
This report outlines the data cleaning process performed on the **NaijaMart Sales Dataset** to ensure accuracy, consistency, and completeness. The dataset contains order details, customer demographics, sales amounts, dates, and product categories. Below are the identified issues and the steps taken to clean the data.

## Issues Identified & Resolutions

### 1. Missing Values
**Issue:** Some rows contained missing values in fields such as `Customer_Location` and `Product_Name`.

**Resolution:**

- Missing `Customer_Location` values were replaced with "Unknown".
- Missing `Product_Name` values were imputed based on the `Product_Category`.

### 2. Duplicate Entries
**Issue:** Some transactions appeared more than once, leading to data redundancy.

**Resolution:**

- Identified and removed duplicate rows based on `Order_ID` to ensure uniqueness.

### 3. Inconsistent Date Formats
**Issue:** Dates were stored in multiple formats (e.g., `DD-MM-YYYY`, `YYYY/MM/DD`).

**Resolution:**

- Standardized all date entries to `YYYY-MM-DD` format.

### 4. Standardization of Categorical Data
**Issue:** Variations in categorical values, e.g., "electronics" vs. "Electronics".

**Resolution:**

- Converted all categorical data to a consistent format (e.g., title case for `Product_Category`).

### 5. Outliers in Sales & Quantity
**Issue:** Some products had abnormally high `Quantity` or `Total_Sale` values.

**Resolution:**

- Outliers were identified using IQR and values above the threshold were reviewed.
- Verified extreme cases and adjusted where necessary.

### 6. Product Categorization
**Issue:** Some products were not properly categorized under `Product_Category`.

**Resolution:**

- Standardized product categorization by grouping items appropriately.

## Summary of Data Cleaning Actions
| Issue | Resolution |
|-------------------------|--------------------------------------------------|
| Missing Values | Imputed missing values with appropriate defaults |
| Duplicate Entries | Removed duplicate records based on `Order_ID` |
| Inconsistent Dates | Standardized to `YYYY-MM-DD` format |
| Categorical Inconsistencies | Converted to a consistent format (Title Case) |
| Outliers in Sales & Quantity | Reviewed and adjusted extreme cases |
| Product Categorization | Standardized and corrected category assignments |

## Conclusion
After applying the above cleaning steps, the dataset is now **consistent, accurate, and ready for analysis**. This cleaned data will be used for exploratory analysis, visualizations, and business insights generation.
