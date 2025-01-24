# Check total rows
SELECT 
  COUNT(*) AS total_rows
FROM 
  kimia_farma.kf_analysis;

# Check unique values for key columns
SELECT 
  COUNT(DISTINCT transaction_id) AS unique_transactions,
  COUNT(DISTINCT product_id) AS unique_products,
  COUNT(DISTINCT branch_id) AS unique_branches,
  COUNT(DISTINCT provinsi) AS unique_provinces,
  COUNT(DISTINCT kota) AS unique_cities
FROM 
  kimia_farma.kf_analysis;

# Check first and last transaction dates
SELECT 
  MIN(date) AS first_transaction_date,
  MAX(date) AS last_transaction_date
FROM 
  kimia_farma.kf_analysis;

# Check ratings
SELECT 
  MIN(rating_cabang) AS min_branch_rating,
  MAX(rating_cabang) AS max_branch_rating,
  AVG(rating_cabang) AS avg_branch_rating,
  MIN(rating_transaksi) AS min_transaction_rating,
  MAX(rating_transaksi) AS max_transaction_rating,
  AVG(rating_transaksi) AS avg_transaction_rating
FROM 
  kimia_farma.kf_analysis;

# Summary of nett sales, profit, and discounts
SELECT 
  MIN(nett_sales) AS min_nett_sales,
  MAX(nett_sales) AS max_nett_sales,
  AVG(nett_sales) AS avg_nett_sales,
  MIN(nett_profit) AS min_nett_profit,
  MAX(nett_profit) AS max_nett_profit,
  AVG(nett_profit) AS avg_nett_profit,
  MIN(discount_percentage) AS min_discount,
  MAX(discount_percentage) AS max_discount,
  AVG(discount_percentage) AS avg_discount
FROM 
  kimia_farma.kf_analysis;

# Frequency of branch ratings
SELECT 
  rating_cabang, 
  COUNT(*) AS frequency
FROM 
  kimia_farma.kf_analysis
GROUP BY 
  rating_cabang
ORDER BY 
  rating_cabang DESC;

# Transactions by province
SELECT 
  provinsi, 
  COUNT(transaction_id) AS total_transactions
FROM 
  kimia_farma.kf_analysis
GROUP BY 
  provinsi
ORDER BY 
  total_transactions DESC;

# Transactions by year
SELECT 
  EXTRACT(YEAR FROM date) AS year,
  COUNT(*) AS total_transactions
FROM 
  kimia_farma.kf_analysis
GROUP BY 
  year
ORDER BY 
  year;
