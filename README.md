## Why do we have this branch?

A rule of thumb for Docker is that a container should do one thing and do it well. Therefore we start a separate container for your database.

## Country-info-database

In this container we used MySQL as a database. We decide to use bitnami/mysql:5.7.38

## what is MySQL?
MySQL is an open-source relational database management system. As with other relational databases, MySQL stores data in tables made up of rows and columns. Users can define, manipulate, control, and query data using Structured Query Language, more commonly known as SQL.

## Why we use bitnami images?
Bitnami closely tracks upstream source changes and promptly publishes new versions of this image using our automated systems.

With Bitnami images the latest bug fixes and features are available as soon as possible.

Bitnami container images are released on a regular basis with the latest distribution packages available.

## Accessing the database

You can check your database through MySQL with open source tool Sequel Pro(Mac OS) and HeidiSQL (Windows)
If you want to check the database download any of those two open source tools according to your system configuration. we can login the credentials using localhost,username as root and the same port as we have in dockerSettings.json.

## Changed the port and hostname

The connection is found in db-connect.php. The file is located in country-info-main. The port in that file needs to correspond to the port specified in dockerSettings.json. Host must be written as your country-info-database.




