## Below are two options for creating a multi-tenant application.  You only need to take one of the tests. They will be graded equally. One is not better than the other, they both get to the same result. Just choose the one you feel most comfortable doing and will achieve a high result. Fork the code on the multi-tenant branch and make a PR when you are done. Please make your PR by Thurs 1/18/18 @ 12 PM time zone UTC -6. A decision will be made the follow day on Friday. 

# Code Test Option 1: Create a multi-tenant app using the apartment gem
* Add apartment to the user model with a subdomain field
* Configure the switch on the subdomain, exclude ‘www’ from subdomain on the registration
* Keep the databases separated for each tenant - one database, one tenant
* Write a test for the user registration and multi-tenant database creation

# Code Test Option 2: roll your own simple multi-tenant
* do everything required as stated above in code test option 1
