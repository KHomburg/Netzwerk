# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* 

Work to be done:

- picture upload
- direct message
- tel und wohnort columns to user
- page for users, that shows all posts of one user
- edit user profile page


 -> config/application.rb added for refile to work. Maybe must be deleted in deployment:
    Refile.store ||= Refile::Backend::FileSystem.new("/tmp/uploads/store".to_s)
    Refile.cache ||= Refile::Backend::FileSystem.new("/tmp/uploads/cache".to_s)
