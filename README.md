# Create a multi-tenant app using the apartment gem
* Add apartment to the user model with a subdomain field
* Configure the switch on the subdomain, exclude ‘www’ from subdomain on the registration
* Keep the databases separated for each tenant - one database, one tenant
* Write a test for the user registration and multi-tenant database creation
