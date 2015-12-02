**This project is dead, see [icd.json](https://github.com/patriciomacadden/icd.json) instead.**

# ICD

This application holds the contents of [World Health Organization](http://www.who.int/)'s [International Classification of Diseases (ICD)](http://www.who.int/classifications/icd/en/).

## Purpose

The purpose of this application is to provide the contents of the ICD in a SQL file, both in English and Spanish languages (feel free to send a pull request with new languages and/or corrections)

## Current languages

* English
* Spanish

## What's inside of this application?

### Database ready for use

In `doc/db/` are the SQL files that you can use for running this application: just insert it on the database.

### Browser

You can use this application for browsing through chapters, blocks and codes.

### API

Using the browser, just append `.json` to the url and it will return the data as json.

### Create/update database

You can use [Pentaho Data-Integration](http://kettle.pentaho.com/) to create/update the database, running the job inside `doc/kettle` (or transformations if you prefer to do it separately).

#### But how do I update the database?

Running the kettle job will do it, but to update the database accordingly to the ICD you will need to download the zip archive with the data, and add the headers to the txt files, just as in the already downloaded ones.

## Quick start

```
$ bundle
```

```
$ rake db:create
```

```
$ mysql -u<USERNAME> -p<PASSWORD> <DATABASE> < doc/db/icd10_en.sql
```

```
$ rails s
```

Now, you can use `http://localhost:3000` to browse the ICD.

## Contributing

If you find a bug, want to improve the project, add more translations, or anything please send a pull request:

1. Fork it.
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Create an ussue with a link to your branch
