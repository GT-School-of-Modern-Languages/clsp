## Introduction
In the **Critical Languages Song Project (CLSP)**, songs are both the object of study and a stepping off point for broader discussion and writing. Materials are presented in a specially designed computer interface. Rich annotation supports baseline advanced learners, while a broad range of contextual content in various media spurs directed exploration among more fluent reader/listeners who have spent time abroad. Songs run the gamut from 1930s popular music to bards, rock and other contemporary forms. The project employs an interdisciplinary approach that merges culture, content and language in a learner-centered environment of the type specifically called for by the ACTFL Standards for Foreign Language Learning.

This repository holds a downloadable version of the project source code. Procedure to download and install a local working version on your server is provided here.

## Installation
Two kinds of installations are envisaged: 1. a manual installation by a person that has a good understanding installing web applications, and 2. installation using a shell script `install.sh` to be provided at a later date.  

The following two packages are provided:    
1. site_package.zip - This contains the web application project files (i.e. php files, etc.)    
2. db_package.sql - This is the database package    

**Procedure 1: Manual Installation by a Techie**
- Download the web application (site_package.zip) and the database (db_package.sql) files on to your server.
- Unzip the web application package in your desired folder under the document root of your server. For example, we unzipped in a folder we created called "DownloadableTest" on an Apache Server. The document root is `/var/www/html` so the folder path is `/var/www/html/DownloadableTest`.
- Make sure that the folder has appropriate permissions (should have read and execute permissions for Group and Other users).
- Create an SQL database (db) and import the tables in the file "db_package.sql" into it. For example, we created a database named "clsp" and imported/dumped db_package.sql into it. You can use a tool like phpmyadmin to easily manage all this.
- Create a new user having access to this db and grant all privileges to the user. Make a note of the user name and password. 
- By now all the tables needed should have been uploaded into the db created. If you added this new user from the command line, you will need to issue a FLUSH PRIVILEGES statement to tell the server to reload the tables with the updated privileges of the new user. Using a tool such as phpmyadmin takes care of this automatically when the new user is created.
- Now you will need to tell the web application where to find the database and how to connect to it. To do this, edit the `config.php` in the folder where site_package was unzipped. The database setup section in config.php should look like this:   
```
/*Database Setup*/

	// SERVER
define ("MYSQL_CONNECT_HOST", "ENTER_HOST");
	
	//USER
define ("MYSQL_CONNECT_USER", "ENTER_USER");
	
	//PASSWD
define ("MYSQL_CONNECT_PASS", "ENTER_PASS");
	
	//DATABASE
define ("MYSQL_DB_NAME", "ENTER_DATABASE");
```

- set the host name, user name , password, and db name as required. For example, if the db is on the same server, set the host name to be "localhost." Set the user name, password, db name to match the sql server which you created earlier--- in this example, "clsp."
- Now you are done. You should be able to launch the application from your web browser. Enter the url to the folder containing the web application and the index page should open up. For example, suppose the folder containing the web files, "DownloadableTest" is in the document root of the server named: `test.iac.gatech.edu`, then using the url `test.iac.gatech.edu/DownloadableTest` should launch the index page of the application. You should see a landing page like this

![Screenshot](/screen-shots/clsp-index-page.png)

You can access the admin page by going directly to the page: `test.iac.gatech.edu/DownloadableTest/_adm-page`. You should see an image like this

![Screenshot](/screen-shots/clsp-admin-page.png)



If you experience any problems at all with installation contact Deji Fajebe at afajebe@gatech.edu.

Be sure to also visit 'http://www.clsp.gatech.edu/Song_Project/' for a live version of the project and for additional content, news, and updates about the project.

## Contributors
- Dr. Stuart Goldberg - sgoldberg(at)gatech.edu
- and others

## License/Copyright Notice
