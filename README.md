# EV-Charging-Patterns-US

The main purpose of this project was to practice **SQL**, along with **Python** and **Tableau**.

**1**. I looked for a dataset on Kaggle. 
  After some exploration, I finally took one having info about the **"EV charging patterns in the US"** for the period comprising Jan'2024-Feb'2024.
  Although the size of such a dataset was not huge -that was not the main purpose for this exercise-, 
  my decision was based on kind of data types included on it (integers, floats, strings, datetimes, geolocations).

Having this dataset as "fact table", I looked for other "dimension tables" (i.e. States' names, Brands' logos, Chargers' types), 
helping me to complement the info already appearing in the main dataset.

All of them were in .csv format.



**2**. I created a database through **MySQL Workbench**, as well as the corresponding tables (1 "fact table", and 3 "dimension tables"):
  * Definition of columns and data types.
  * Definition of Primary and Foreign keys.
  * Import of data for each table.

For instance, the database and "fact table" were created as follows:

**Database**:

![image](https://github.com/user-attachments/assets/966d81da-7767-4749-8504-11c457b53233)

**Fact table**:

![image](https://github.com/user-attachments/assets/637ad83e-d676-413a-8beb-8a25358694d4)


And the resulting **Schema**:

![image](https://github.com/user-attachments/assets/843c2eb4-2bdb-47e1-95f2-36491f5f748d)



**3**. In **Python**, I set up a connection to my SQL database in order to be able to run/practice different queries according to the techniques learned so far:
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


And some **conclusions based on numerical** analysis:

  A- On average, there were 226.2 charging stations by city.

![image](https://github.com/user-attachments/assets/e6a2c720-146e-461f-a7fe-0c21db4de65a)

  B- Los Angeles and Houston were the cities with charging stations above the average.

![image](https://github.com/user-attachments/assets/e812deae-a501-4009-a577-e2dd43d4e3e3)

  C- The average battery capacity of cars was 74.43 kWh, and both “BMW i3” and “Hyundai Kona” were above such average.

![image](https://github.com/user-attachments/assets/0157c5ef-be26-4fc0-85e4-fb40fd82cee5)

![image](https://github.com/user-attachments/assets/a94997c7-1dc4-4f77-ae4f-00b582126d81)

  D- On average, Chicago was the city with the highest cost/hour; followed by Los Angeles, New York and Houston. Finally, San Francisco was the city with the lowest cost/hour.

![image](https://github.com/user-attachments/assets/66194945-a1d3-49e1-8126-ab949f5d1080)

  E- Los Angeles was the city with more charging hours in total, while Chicago was the city with less.

![image](https://github.com/user-attachments/assets/39dbe502-dafa-482f-9695-7806a9b338df)

  F- “Evening” was the time of the day with more charging hours, followed by “Morning” and “Night”; the last of the list was “Afternoon”.

![image](https://github.com/user-attachments/assets/bddd511a-a94a-413e-a3cb-93e7b3d1fbc7)

  G- On Fridays, “Long-Distance Travelers” were the user types who charged the most. On Sundays, they were “Casual Drivers; and for all other days, they were “Commuters”.

![image](https://github.com/user-attachments/assets/d31dc222-bb78-4bd0-bf9e-1b908f73825d)

  H- “Tesla Model 3” was the car with the highest charging hours in Chicago, New York and San Francisco. ”Chevy Bolt“ was the one in Los Angeles, and “BMW i3” in Houston.

![image](https://github.com/user-attachments/assets/b3d02ac3-0d4b-44b3-83d6-1cb1e979e61f)



**4**. After practicing and obtaining reliable results from such queries, I **joined all the tables** of my database, I selected the desired columns
to be used in Tableau, and I finally **exported all this info in a unique .csv file** (for simplicity reasons); although such joins could have been directly done in Tableau too:

![image](https://github.com/user-attachments/assets/7203ea92-728d-4b48-af3f-3a241e4b25c4)

![image](https://github.com/user-attachments/assets/7c526fb8-f03e-4a67-b2af-80d9e03d2183)

![image](https://github.com/user-attachments/assets/695dc157-405d-496c-8d25-0d4f798ea462)



**5**. Once in **Tableau**:
  * I imported the resulting .csv retrieved from Python.
  * In the **Data Source** tab, I had to modify the properties of the file since the information wasn't correctly populated at first; common issues are "Field separator" or "Locale" (US vs EU, for instance).
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
    * Applying axis synchronization
    * Data formatting
    * Applying reference lines
    * Creation of groups
    * Creation of calculated fields
    * Tooltips formatting
    * Playing with filters
  * As final step before publishing, I was able to create some **dashboards**. The main achievement here was the link between visualizations; where one was acting as a filter of the other/s.   



**6**. **Link** to Tableau **Viz**:

https://public.tableau.com/views/EVchargingpatternsintheUS/EVchargingpatternsUS-1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
