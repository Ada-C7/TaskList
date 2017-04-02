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

## Wave 1
This wave is where we introduce ActiveRecord to create a model. We use the model to persist our data.

1. create a migration which will create a new `Task` model
    - create the database schema and tables by running the `rails db:migrate` command
    - the `Task` model should include _at least_ a name, a description and a completion date
    - create at least 2 `Task` model instances using the `rails console`
1. update the controller's `index` action you created to retrieve and show `all` Task objects from the database
    - you may need to update the view as well to use the model fields rather than the hard-coded data


## Wave 2
In this wave, we will expand the actions we support and introduce forms for user interactivity and persistence.

1. add support to `show` each task
    - update the task list to link to a `show` action for each individual task
    - create a route
    - create a controller action
    - create an ERB view
1. Create a new task:
    - update the task list to have a link to add a new task
      - this will give the user a new page with a **form** with the appropriate task fields
      - the site should take the user back to the task list after the new task is added

## Wave 3
In this wave we will extend the interactivity with users, allowing them to edit existing tasks.

* Services (job queues, cache servers, search engines, etc.)

## Wave 4
In this wave, we will add the ability to delete tasks. We will also add the ability for a user to mark a task complete.

1. Delete a task  
    On the task list, add a button or link for each task that will, once clicked:
    1. Ask the user to confirm that they definitely want to delete the task.
    1. Delete the task from the database and redirect the user back to the list of remaining tasks
1. Mark a task complete
    - Add a button to the list of tasks on the home page that, when clicked, will mark a task complete
    - Update the database with the task's completed date
1. **Optional**
  - DRY up your code by reusing the view code from the `new` functionality
    - Hint: Rendering _partials_ in Rails

