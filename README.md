
# READIT Blog

I have build up a Rails blog app which cover numerous functionalities. The basic authentication of user can be managed with session. Also provide seperate privilages for user and admin panels.

The dependency management between user and article tables, article and comment tables are briefly described while creation and deletion operations.

Other major functionalities covered are the scaffold generator, building a MVC without scaffold, setting up the database, model, views, controller, partials, CRUD, routes, before_action, validates, belongs_to, has_many, foreign keys, fixing errors, styling with SASS, search module, authentication, admin panel etc.

You can install, setup and run this project via local development server using commands are mentioned below :

<h3>Installation</h3>
Download the app from this repo

<pre>## Move into the application dir
cd readit
$ bundle install</pre>

<h3>Create DB & Tables</h3>
<pre>##  create DB
$ rake db:create
##  create Tables
$ rake db:migrate </pre>

<h3>Run app</h3>
<pre>
$ rails s
## Navigate to http://localhost:3000/
</pre>

NOTE :- Please run the mysql server also. 
