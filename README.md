# How to easily dockerize a Laravel Application

This is my personal approach on how to create and setup a Dockerfile to enable the creation of PHP5.6 - APACHE Docker to run a Laravel App.

## Contents
* Server (folder)
    * .env file
    * 000-default.conf file  
* .dockerignore file
+ Dockerfile

## How to

Inside your Laravel App folder:
1. Create a Folder named **server**;

2. inside the **server** folder:
    * put your **.env** file that you use for Production deployment;
    * Copy the **000-default.conf** file (*Apache* default site configuration file)

3. Copy the **Dockerfile** and the **.dockerignore** files

4. Adjust the *000-default.conf* and the *Dockerfile* to your needs

5. copile your docker image

6. run your new docker image

## Atention!

This Docker will need to run connected to MySql(or other DBMS) through other Docker or through the Host Machine

**And the Database of your Laravel App needs to already exist in the DBMS.**
