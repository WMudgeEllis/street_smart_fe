# Street Smart Front End Application

This is the front end to the street smart project. It is currently deployed on heroku [here](https://street-smart-fe.herokuapp.com/). This application is designed to allow users to add hazards that they see when out and about. Other users are then able to see the placed hazards.

* Ruby/Rails versions

  - ruby 2.7.2 
  - rails 5.2.6

* Instructions for local deployment
  
  ```
  git clone git@github.com:WMudgeEllis/street_smart_fe.git
  
  bundle install 
  
  rails db:{create, migrate}

  bundle exec figaro install
  
  ```
  
* Authorization for API usage
  
  - For successful local deployment, you will need to acquire credentials for Google OAuth2. More information can be found [here](https://developers.google.com/identity/protocols/oauth2)
  - This application also requires authorization for the GoogleMaps JavaScript API. More information can be found [here](https://developers.google.com/maps/documentation/javascript/overview)


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
