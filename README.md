# EV-Charging-Patterns-US

The main purpose of this project was to practice **SQL**, along with **Python** and **Tableau**.

1. I looked for a dataset on Kaggle. 
  After some exploration, I finally took one having info about the **"EV charging patterns in the US"** for the period comprising Jan'2024-Feb'2024.
  Although the size of such a dataset was not huge -that was not the main purpose for this exercise-, 
  my decision was based on kind of data types included on it (integers, floats, strings, datetimes, geolocations).

Having this dataset as "fact table", I looked for other "dimension tables" (i.e. States' names, Brands' logos, Chargers' types). 
helping me to complement the info already appearing in the main dataset.

All of them were in .csv format.


2. I created a database through **MySQL Workbench**, as well as the corresponding tables (1 "fact table", and 3 "dimension tables"):
    * Definition of columns and data types.
    * Definition of Primary and Foreign keys.
    * Import of data for each table.

For instance, the database and "fact table" were created as follows:

![image](https://github.com/user-attachments/assets/7861a251-b59a-4960-b1d2-d6a08214511d)


3. In **Python**, I set up a connection to my SQL database in order to be able to run/practice different queries according to the techniques learned so far:
    * GROUP BY
    * ORDER BY
    * WHERE/HAVING CLAUSES
    * JOINS
    * WINDOW FUNCTIONS
    * SUBQUERIES
    * CTEs

![image](https://github.com/user-attachments/assets/7a262c1c-d4d3-474c-ab40-3b691c6a3435)

Some **queries' examples** below:

![image](https://github.com/user-attachments/assets/1629d955-c1c1-46db-9415-1644938e14fd)

![image](https://github.com/user-attachments/assets/67a7537d-33d4-4bc9-82d0-9ceccf5d7e40)

![image](https://github.com/user-attachments/assets/184968a2-cdf5-4c6f-8b67-f6ec73503d23)


4. After practicing and obtaining reliable results from such queries, I **joined all the tables** of my database, I selected the desired columns
to be used in Tableau, and I finally **exported all this info in a unique .csv file** (for simplicity reasons); altough such joins could have also been directly done in Tableau:

![image](https://github.com/user-attachments/assets/7203ea92-728d-4b48-af3f-3a241e4b25c4)

![image](https://github.com/user-attachments/assets/7c526fb8-f03e-4a67-b2af-80d9e03d2183)

![image](https://github.com/user-attachments/assets/695dc157-405d-496c-8d25-0d4f798ea462)


5. Once in **Tableau**:
  * I imported the resulting .csv retrieved from Python.
  * In the **Data Source** tab, I had to modify the properies of the file since the information wasn't correctly populated at first; common issues are "Field separator" or "Locale" (US vs EU, for instance).
  * I also had to convert some data types for a better performance (as an example, strings to either integers or floats, strings to URLs, or both strings and floats to geolocations).
  * With these modifications applied, I could start properly working with different **visualizations** such as:
    * Maps
    * Bar charts
    * Bullet charts
    * Line charts
  * With them, I was able to practice some Tableau features like:
    * Playing with dimensions (Vehicle Model, User Type, Logo,...)
    * Playing with measures (Charging Duration Hours, Charging Cost Usd)
    * Applying dual axis
    * Applying axis sinchronization
    * Data formatting
    * Applying reference lines
    * Creation of groups
    * Creation of calculated fields
    * Tooltips formatting
    * Playing with filters
  * As final step before publishing, I was able to create some **dashboards**. The main achievement here was the link between visualizations; where one was acting as a filter of the other/s.   
       



