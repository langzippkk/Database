You will first need to create and populate database using create_db_large.sql and 
populate_db_large.sql!


This is a database project for the NBA data. My main table is called year where
every year we have data for championship team name, number of teams in this year,season start date and also the year as its main key(since each year we only have one championship,one start date and fixed number of teams). Year is also a foreign key of my related table where you have the honors of each year.

Please note that the data is not real and we have over 10,000 years. While the related 
honor table only have 20 records. So not every year has its corresponding honor record but we can add them using function. There is a Home button in every page that can help you return to the main search page. 

When inserting new record, you cannot add years that already exists(from 1-10000). Available range is (10001-20000)


1. which version of python (2.7 or 3.x) that you tested the application with:

   I am using python 3.8, which is the newest version. But any version of python 3.X will be able to run and compile my file.


2. which search attribute uses wild card / like

    There are three attributes in my homepage where the championship team name uses like.
    For example, team name "Lakers" could be searched if you enter "laker".


3.what entities should we search with or look at to view related records. 

    A correct input format: 
    team: Lakers                   Year: 2015       Number of teams: 20

	There will be a result for any year: for example from 1 to 5000 "year".
	There will be multiple results for number of teams from 20 to 30.
	Since I am a Los Angles Lakers fan, every year's championship is Lakers now. However, you can definitely change it using the VIEW/EDIT function.

	Empty result: If you enter Bulls for the team field, it will return there is no team called Bulls in year xxxx with xx number of teams. 

	Adding record: My database already have record from 1 to 10000 year. But you can add any year from 10001 to 20000.


4. If there are any known issues or features you would like to highlight, please add this in the README.  

	In the main search page, there are different error handling function:
	1. If you enter "!@#@!" for Championship teams, it will tell you the input format is wrong. However, a team name could be numbers, for example, the philadelphia 76ers(not in my database though)
	2. If you input string for example, "rwaewa" for either year or number of teams, it will also tell you the input format is wrong.
	3. If you are input nothing, it will tell you that you are searching nothing.

	In the search result page, there are error handling for inserting records.
	1. Wrong type input will be catched for year and number of teams.
	2. Number of teams cannot be less than 20 or more than 50. Year cannot be greater than
	20000.
	3. If you add a record that its key already exist, it will tell you that the key already exists.
	4. There is error handling for updating record which is similar to adding record.
	4. During insertion of dependency record, it will catch errors if you are input numbers or invalid input for player names.



5. Functionality:

	Totally 8:
	1. Search function on main page.
	2. Show new players function on main page.
	3&4.Insert, delete function on search result.
	5&6. Show dependency table & show dependency result
	7. Insert dependency record.
	8. Update record

	These corresponding to the requirement on Canvas:

	(1) short description (eg a title or name, something to distinguish the record)
	The NBA season or years is a good identifier for each year's record.
	(2) a link to view and/or update the record
	VIEW/EDIT button.
	(3) a button or link to delete the record
	DELETE botton.
	(4) a link to view a list or table of all records from a foreign key relationship (this list does not have to give all attributes from the other relation, but must show at least 4 attributes)
	Show its dependency table button.
	(5) a link to create a new record that would appear in the list from the previous element.
	INSERT NEW RECORD button.
	(6) a link to create a new record that could appear in the search result.
	INSERT DEPENDENCY button
	Please note that a correct format of player name should like:Lebron James.
	Which means you split first and last name by a space.
