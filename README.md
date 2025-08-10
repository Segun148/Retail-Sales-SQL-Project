# Retail Sales SQL Project

This is a small SQL project demonstrating database design, data population, and analytical queries on a retail sales dataset.

## Project Structure

- `sql/` - SQL scripts to create tables, insert sample data, and run analysis queries
- `er_diagram.png` - Entity-Relationship diagram of the database schema
- `sample_outputs/` - Exported CSV files from query results demonstrating the analysis

## How to run

1. Run `sql/01_create_tables.sql` in MySQL Workbench to create the database and tables.  
2. Run `sql/02_insert_data.sql` to populate tables with sample data.  
3. Run `sql/03_analysis_queries.sql` to perform analysis and see insights.

## Key Insights and SQL Techniques Demonstrated

- Top products by revenue using aggregate functions and joins  
- Monthly sales trends with date formatting and grouping  
- Customer lifetime value with grouping and ordering  
- Use of **CASE WHEN THEN** to categorize sales quantities and segment customers  
- Use of **DISTINCT** to retrieve unique customer cities  
- Use of **UNION** to combine unique cities from customers and stores  
- Identification of products never sold using LEFT JOIN  

## Tools Used

- MySQL Workbench  
- Git and GitHub  

## License

This project is licensed under the MIT License.
