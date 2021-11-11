# Street Smart Front End Application

This is the front end to the street smart project. It is currently deployed on heroku [here](https://street-smart-fe.herokuapp.com/). This application is designed to allow users to add hazards that they see when out and about. Other users can view hazards, vote on the credibility of a hazard, and see walking safety information for their current location.

* Database Schema

<img width="482" alt="Screen Shot 2021-11-11 at 10 40 28 AM" src="https://user-images.githubusercontent.com/75844153/141326402-b45da032-ef73-4c0e-a94f-c71ea2b398ee.png">
  

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
  - After obtaining these credentials, they can be added to `config/application.yml` for safe storage through Figaro. More information on how to use the Figaro gem can be found [here](https://github.com/laserlemon/figaro)


* How to run the test suite

```
bundle exec rspec
```

 ### Contact Info 
  
  ![Linked In](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)

- [Weston Ellis](https://www.linkedin.com/in/weston-mudge-ellis/)
- [Ida Olson](https://www.linkedin.com/in/idaolson/)
- [Andrew Massey](https://www.linkedin.com/in/andrew-massey-b06662194/)
- [Ryan Teske](https://www.linkedin.com/in/ryan-teske-2021/)
- [Erin Quinn](https://www.linkedin.com/in/erin-quinn-a53a8b172/)

![Github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)

- [Weston Ellis](https://github.com/WMudgeEllis)
- [Ida Olson](https://github.com/idaolson)
- [Andrew Massey](https://github.com/acmassey3698)
- [Ryan Teske](https://github.com/Rteske)
- [Erin Quinn](https://github.com/equinn125)

