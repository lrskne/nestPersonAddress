# Code Fellows assignment 5B.1 Build a contact list with nested addresses
Due Today by 11:59pm  Points 10  Submitting a website url
Generate a new Rails app and create two models: Person and Address.

The Person model should have the following fields: first_name, last_name, phone.

The Address model should have the following fields: person_id, street_address, city, state, zip.

Create a People controller with the standard actions: index, show, new, edit, create, update, and delete. Combine the edit and new forms by making them into a partial that gets included by the new and edit views. Make your new people form includes the following fields from the addresses via the fields_for method: street_address, city, state, zip.

The end result should be the person form including not only first and last names, but also the street, city, state, and zip fields.

Be sure to add the appropriate accepts_nested_attributes_for to your Person model.

Complete the above and verify each action works as described. Do not use the scaffold generator.

Commit your work, create a repository on Github and push your work up.

Submit the following as your homework:

Github URL for your project
A well formed question
Did you use the walk-through (spoiler)?
