# Bookmark Manager

Bookmark manager is a web application to maintain a collection of bookmarks (URLs). 
(A RESTful CRUD web app built using Ruby, Sinatra, RSpec, Capybara, Postgres HTML & CSS.)

## Motivations for this project

* Build a web app that uses a database
* Generate User Stories from Requirements
* Build complete full-stack features - including controller, model, view and database code.
* Implement RESTful routing conventions
* Build a Registration system & Authentication system
* Implement a one-to-many & one-to-many relationships
* Use database GUIs to interact with databases
* Set up a test environment
* Test-Drive advanced Objects in Ruby, including adapter, wrapper, and service objects

## User Stories

```
As a user
So that I can quickly go to web sites I frequently visit
I would like to see a list of bookmarks

As a user
So I can store bookmark data for later retrieval
I want to add a bookmark to Bookmark Manager

As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark

As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark

As a user
So that the bookmarks I save are useful
I want to only save valid URLs

As a user
So that I can make notes about my bookmarks
I want to add a Comment to a Bookmark

As a user
So that I can categorise my bookmarks
I want to add a Tag to a Bookmark

As a user
So that I can find relevant bookmarks
I want to filter Bookmarks by a Tag

As a user
So that I can have a personalised bookmark list
I want to sign up with my email address

As a user
So that I can keep my account secure
I want to sign in with my email and password

As a user
So that I can keep my account secure
I want to sign out
```

## Features

* A user can view, add, edit & delete bookmarks
* A user can add comments to bookmarks
* A user can add tags to bookmarks
* A user can view all comments and tags under each bookmark
* A user can view all bookmarks under a tag
* A user can sign up
* A user can sign in
* A user sees an error if they get their email wrong
* A user sees an error if they get their password wrong
* A user can sign out

## Approach

* 6 Classes: Bookmark, DatabaseConnection, Comment, Tag, BookmarkTag, & User
* 7 Views: /*bookmarks*, /*bookmarks*/new, /*bookmarks*/edit, /*comments*/new, /*sessions*/new, /*tags*, /*tags*/new, /*users*/new
* Fully test drove app using RSpec & Capybara
* Aimed to use the MVC pattern to improve the maintainability of the app


## Getting started

### To set up the project

1. clone repo to your local machine `git clone https://github.com/MHUS25/bookmark-manager.gitt`
2. Run the command `gem install bundle` (if you don't have bundle already)
3. When the installation completes, `run bundle`

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## Usage

To start the server, execute the ruby file directly `ruby app.rb`.
Visit http://localhost:4567/ in your browser.

## Running tests

Run both feature and unit tests using:
`rspec`

## Next steps & ideas for extending the application:

* Improve the UI & UX by linking pages/routes
* Link bookmarks to a user so that a user has to be logged in to add/view bookmarks & can only read/update/delete bookmarks they have added
* Automate migrations - Write a Rake task to set up the development and test databases
