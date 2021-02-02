<h1 style="text-align: center">Family Organizer</h1>

## About

Family Organizer is an app for managing the daily life of a family. It supports shared lists - such as shopping, todo, and gift lists - between all guardians registered for a family in the app. In addition, the app supports the upload of images to create a family photo album.

When a user registers, they are assigned to a new Family. Within the app, this user can add other "guardians" who will also have full access to the family account. This means that all guardians will be able to see, edit, and delete all lists and photos in the app.

Guardians may also add children to the app to associate with the family. A future goal of the app is to build an integrated family calendar that can track evens for each child and guardian in one place. Addition future features include photo albums linked to specific children/guardians, and a "Milestones Tracker" for each child to document major momoents.

This application was completed as an end-of-module project for phase 2 of Flatiron School's software engineering program with using Ruby on Rails and PostgreSQL.

## Running the App
- Fork and clone the repo
- `cd` into the parent directory and run `bundle install`
- run `rails db:create` to create a database for the app data
- run `rails db:migrate` to build the necessary schema within the datatbase.
- If testing data is desired, run `rails db:seed`
- run `rails s` to launch your local server and open a browser to `localhost:3000`

## ERD Model

<img src="./Domain ERD.png" alt="Family Organizer ERD Model">

## Contributing
Pull requests are welcome. Please make sure that your PR is <a href="https://www.netlify.com/blog/2020/03/31/how-to-scope-down-prs/">well-scoped</a>. For major changes, please open an issue first to discuss what you would like to change.

### Known issues
* <a href="https://github.com/dsasse07/Family-Manager/issues">Visit Issues Section</a>

### Contributors
<table>
  <tr>
    <td align="center"><a href="https://github.com/dsasse07"><img src="https://avatars1.githubusercontent.com/u/72173601?s=400&u=57e4654c70d63d16bc5b84e2878d97f770672715&v=4" width="200px;" alt=""/><br /><sub><b>Daniel Sasse</b></sub></a><br />
    <td></td>
    <td align="center"><a href="https://github.com/mcardona9015"><img src="https://avatars.githubusercontent.com/u/73857382?s=460&v=4" width="200px;" alt=""/><br /><sub><b>Michael Cardona</b></sub></a><br />
    </tr>