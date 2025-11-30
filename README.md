AI Agent for Relational Database System
University Project

Integration of Google Gemini (LLM) with a MySQL relational database for automated SQL query generation and business analytics.

Project Overview
This project demonstrates an intelligent AI-driven system that connects to a MySQL database and automatically generates optimized SQL queries based on natural language questions.

The system uses:
Google Gemini LLM (via API)
LangChain
MySQL 8.0
Python + JupyterLab

The purpose is to enhance analytics and automate data exploration over a real-world e-commerce dataset (Olist Dataset).

Dataset Description:
We used the Olist Brazilian E-commerce Dataset, which includes real commercial transactions.

Final tables used in this project:
customers -	Customer IDs, cities, and states
orders -	Order timestamps, statuses, customer references
order_items -	Products sold in each order
products -	Product categories and metadata
sellers -	Seller information
order_payments	- Payment methods and values
order_reviews -	Customer review scores and comments
geolocation	- Geographical coordinates

Total dataset size after cleaning:
8 tables, ~30k rows(not counting geolocation table that has over 540k rows).

Team Roles:
DB Architect - Toktobekova Aiana - Dataset selection, structure definition, problem formulation
DB Analyst - Brimkulov Uzan -	ER diagram, PK/FK relations
SQL Developer	- Bargybaev Azamat -	Database creation, import, indexing
AI Engineer -	Ominakhan Sultanova	- AI agent setup, SQL automation, insights generation, views

Problem Statements:
1. Identify regions with the highest delivery delays.
2. Determine product categories generating the highest revenue.
3. Detect sellers with consistently low review scores.
4. Identify high-value customers based on total spending and order frequency.
These analytical problems are fully automated through the AI agent.
