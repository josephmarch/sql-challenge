# sql-challenge
Homework Assignment: Pewlett Hackard research project on employees of the corporation from the 1980s and 1990s.

1) ERD (Entity Relationship Diagram) saved as image: ERD.png and details for it stored as ERD.sql
2) schema.sql includes all table schemata for creating the tables that are later imported (csv data used for importing is in the data folder)
3) queries.sql includes all 8 requested data queries as well as a section at the start used for data verification
4) bonus.ipynb is the jupyter notebook for the bonus section that creates a histogram and bar chart in pandas. It relies on a config.py (not included) which supplies it the database location (variable: db_location). In the config.py file that you will have to add you will need db_location = '<database location>' where you replace <database location> with your own parameters. Mine looked as follows, but with the username:password replaced with my actual username and password and with the word port replaced with the port for my postgresql 11 location.
   db_location = 'postgresql+psycopg2://postgres:postgres@localhost:5433/EmployeeSQL'
