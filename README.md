# pokemon-api

## General information

This pokemon-api is a simple CRUD using `ruby-3.1.2`, a `PostgreSQL` database and the gem `kaminari` for
pagination. <br/>
All pokemon's fields are mandatory except `type2`. <br/>
It is possible to test the API using the `Postman` collection located in the `lib/postman` folder. <br/>
Make sure that the database user `postgres/test` exists. Otherwise, the correct user/password should be modified in
the `database.yml` configuration file (properties `development.user`, `development.pasword`, `test.user`
and `test.password`).

## Database configuration

`rails db:create` <br/>
`rails db:schema:load` <br/>
`rails db:seed` <br/>

## Launch the server

`rails server`

## Run the tests

`rails test`
