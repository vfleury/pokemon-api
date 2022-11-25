# pokemon-api

## General information

This pokemon-api is a simple CRUD using `ruby-3.1.2`, a `PostgreSQL` database and the gem `kaminari` for pagination.
All pokemon's fields are mandatory except `type2`.
It is possible to test the API using the `Postman` collection located in the `lib/postman` folder.
Make sure that the database user `postgres/test` exists.

## Database configuration

`rails db:create` <br/>
`rails db:schema:load` <br/>
`rails db:seed` <br/>

## Launch the server

`rails server`

## Run the tests

`rails test`
