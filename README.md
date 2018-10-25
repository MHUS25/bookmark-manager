# Bookmark Manager

Bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

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
```

## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
ruby app.rb
```

To view bookmarks, navigate to `localhost:4567/bookmarks`.

### To run tests:

```
rspec
```
