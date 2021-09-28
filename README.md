# Fantasy-Football: (2021-2022)

## Database used to create rankings for the 2021-2022 NFL Fantasy Football Season

* For players that either missed the entirety of the 2020-2021 season or got injured mid-season, ESPN projections for the 2021-2022 season were used. 
* The views created are used to filter through specific statistics in order to create a final product
  * Views can be found in the "fantasy_views" file
* When run, the file "create_database" will create the database and populate all tables with data
  *   When run, the file "create_empty_database" will create the database, but the tables won't be populated with data
  *   All tables can be found as csv files in the "Tables" folder 
* ERD can be found in the "fantasy2021.mwb" file
