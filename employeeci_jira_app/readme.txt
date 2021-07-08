Employees Salary Payments System for Jira Cloud Powered by Rapyd Payments API

 
How to Run the App Locally.

1.)Install xampp Server and ensure that php and mysql is running.


2.) import employeeci_db.SQL file which contains database Table.


3.) Edit settings_url_frontend.html file inside the main application folder to point to URL location of the Backend Code directory.


4.) Edit settings_url.php file inside backend_jira folder to point to URL location of the Backend Code directory itself.


5. Edit data6rst.php file inside backend_jira folder to reflect your Database Credentials.


6.) Edit rapdy_access_keys.php file inside backend_jira folder to reflect your Rapyd API Access Credentials Where Appropriates.


7.) utilities.php file inside backend_jira folder is what contain Rapyd API default Connection Codes.


8.) atlassian-connect.json inside the main Folder Contains the Files you will need to upload and install in your Atlassian Jira Cloud





How to Build Plugins for Atlassian Jira Cloud


You can follow the Tutorial link below to learn, build and install Atlassian Jira Cloud Plugins/Addons.

 https://developer.atlassian.com/cloud/jira/platform/getting-started-with-connect/




How to Install Application Plugin on Atlassian Jira Cloud


1.) You Will need to Signup with Atlassian Jira Cloud and have an account with them by visiting the dev link below
 http://go.atlassian.com/cloud-dev 

or you can sign-in into your Accounts if you already have one.


2.) Once Login into your Jira Account, click on Apps Button at top menu. then Click on Manage your Apps next click on Settings next checkbox that says 
Enable development mode then click on Apply button.

Now you must refresh/reload that Jira Page so that you will see Upload App button at the middle of the page right. It is a must at this point to refresh the 
Jira Page so that you will see the Upload App button at middle of the page right.

click on the Upload App button and it will ask you to Enter the app descriptor URL to upload the app and install. 

Here just enter the our Atlassian Jira Cloud Plugin Url https://qbtut.com/employeeci_jira_app/atlassian-connect.json and click upload button.
 Jira Cloud will then download our Plugins and install it for you. You will then see our Plugins name as Employees Salary Payments Apps by Rapyd API.


3.) Once plugin is successfully installed on Jira, Its time to start using our Plugin. Now click on Apps Button at top menu. then Click on our Plugin name
 Employees-Pay-by-Rapyd and wait for the Plugin to load. if for some reason it does not load due to internet connection uses, try it again or refresh the page and try again.

You will see Our Plugins running on Atlassian Jira Cloud.


Alternatively, You can watch this Youtube Video to see how you can Install our Plugins on Atlassian Jira Cloud


https://youtu.be/cEGibNf-b-c




Optionally, In the event that you also want to access the app directly from Web, you can try the web version directly online from 
 https://qbtut.com/employeeci_jira_app/index.html 

or locally at http://localhost/employeeci_jira_app/index.html  depending on the directory of your app installations


