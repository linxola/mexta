# **MExTA**

A Minimal Expenses Tracking Application built with Ruby on Rails! \
It is a SPA thanks to Hotwire / Turbo that comes with Rails 7. Also, Bootstrap and a bit of Stimulus were used for frontend part.

## Screenshots

| [![Welcome screen](https://i.postimg.cc/2yK6BQL5/Screenshot-from-2023-11-15-11-40-31.png)](https://postimg.cc/Zv6ZGyck) |
| --- |
| [![Main screen](https://i.postimg.cc/C5H33SSp/Screenshot-from-2023-11-15-11-55-15.png)](https://postimg.cc/4Hy2tCYW) |
| [![Categories screen](https://i.postimg.cc/G2zPV5VS/Screenshot-from-2023-11-15-11-58-03.png)](https://postimg.cc/Ppp882tm) |

## Features

- Signing up and signing in with the login and password.
- Spendings can be created, updated and deleted and has such fields: title, description, category and amount.
- When creating a spending, a category is chosen from the list of predefined by default or created by user categories.
- Categories has their own management screen, where they can be created, updated and deleted.
- Main screen is the list of user's spendings with a total value and search filters with the support of several parameters (e.g., category, amount).
- User is able to share (with a button on the main screen) the non-editable list of his spendings with another user (even if the other user isn't logged in).
- The share link is unique and generated each time user presses the share button.

--------

## Getting Started


### Requirements:

In order to set up and run the project on your local machine you need this
software installed:

1. Ruby
2. PostgreSQL
3. Node.js and yarn

--------

### Installation:

#### Step 1

Clone the project from this repository to your projects folder:

```shell
$ cd <your_projects_root_folder>
$ git clone <link_to_mexta_repo>
$ cd mexta
```

#### Step 2

Install one of the tools for ruby version management (if you don't have it yet) -
[RVM](https://rvm.io/rvm/install) or [rbenv](https://github.com/rbenv/rbenv#installation)

Install Ruby 3.2.2 version:

with RVM:

```shell
$ rvm install 3.2.2
$ rvm use 3.2.2
```

or with rbenv:

```shell
$ rbenv install 3.2.2
$ rbenv local 3.2.2
```

#### Step 3

Install PostgreSQL database.

- [Instructions for Ubuntu/Debian](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-22-04-quickstart)
- [Instructions for Fedora](https://docs.fedoraproject.org/en-US/quick-docs/postgresql/)
- [Instructions for MacOS](https://sqlpad.io/tutorial/postgres-mac-installation)

In order to prevent possible problems with `rake db` or `rails db` commands
when applying changes to the database, do this:

1. Open the postgres config file with your text editor (nano, vim etc...)

If you're on Debian / Ubuntu:
```shell
$ sudo <text_editor> /etc/postgresql/<version>/main/pg_hba.conf
```

If you're on Fedora:
```shell
$ sudo <text_editor> /var/lib/pgsql/data/pg_hba.conf
```

2. Find the line with content like: `local all postgres peer`

3. Comment it out and paste this line below: `local all all md5`

4. Restart your Postgres server:

```shell
$ sudo systemctl restart postgresql.service
```

#### Step 4

Install [NVM](https://github.com/nvm-sh/nvm#installing-and-updating),
if you don't have it yet.

With NVM, install Node.js 18.14 (LTS) version:

```shell
$ nvm install 18.14
```

#### Step 5

After Node.js install, enable yarn through enabling Corepack:

```shell
$ corepack enable
```

or through installing it with npm:

```shell
$ npm install --global yarn
```

Install necessary yarn dependencies:

```shell
$ yarn install
```

#### Step 6

Install [bundler](https://bundler.io/):

```shell
$ gem install bundler
```

Run bundler to install the project's dependencies:

```shell
$ bundle
```

#### Step 7

Create the database configuration file from sample and modify it according to your environment:

```shell
$ cp database.yml.sample database.yml
```

#### Step 8

Create and migrate the database:

```shell
$ rake db:create
$ rake db:migrate
```

**Congratulations, you have set up the project!**

--------

## Usage

#### Server

```shell
$ bin/dev # start up
[ctrl + c] # shut down
```

When up, the project is available on
[http:://localhost:3000](http:://localhost:3000).

#### Console

```shell
$ rails c # start up
> exit # shut down
```

#### Tests

```shell
$ rspec
```

#### Code style

```shell
$ rubocop
```

---------------
