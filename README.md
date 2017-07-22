# Parks Lookup API

#### _Mohamed Warsame_

## Description

An api that will return a list of state and national parks

## Endpoints

* GET http://localhost:3000/parks/:id will show an individual park by :id
* POST http://localhost:3000/parks will post a new park.
* PUT http://localhost:3000/parks/:id will update a park.
* DELETE http://localhost:3000/parks/:id will delete a park with the corresponding :id.

## Setup/Installation Requirements

* _Clone the repo_
* _Run the following commands in the root of the project to set up the application_
```
$ bundle install
$ rails db:create
$ rails db:schema:load
$ rails db:seed
$ rails s
```

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 by _Mohamed Warsame_
```
