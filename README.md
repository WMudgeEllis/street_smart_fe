# Street Smart Front End Application

This is the front end to the street smart project. It is currently deployed on heroku [here](https://street-smart-fe.herokuapp.com/). This application is designed to allow users to add hazards that they see when out and about. Other users can view hazards, vote on the credibility of a hazard, and see walking safety information for their current location.

[Street Smart Back End Repo](https://github.com/WMudgeEllis/street_smart_be)

### Database Schema

<img width="482" alt="Screen Shot 2021-11-11 at 10 40 28 AM" src="https://user-images.githubusercontent.com/75844153/141326402-b45da032-ef73-4c0e-a94f-c71ea2b398ee.png">
  

### Ruby/Rails versions

  - ruby 2.7.2 
  - rails 5.2.6

### Languages:
![ActiveRecord](https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6.svg?&style=flaste&logo=css3&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-0EB201.svg?&style=flaste&logo=html5&logoColor=white)
![Ruby](https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)

### Deployment Tools:
![Heroku](https://img.shields.io/badge/Heroku-430098.svg?&style=flaste&logo=heroku&logoColor=white)
![Circle CI](https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white)
![Faraday](https://img.shields.io/badge/faraday-b81818.svg?&style=flaste&logo=rubygems&logoColor=white)

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />  
</p>


### Instructions for local deployment
  
  ```
  git clone git@github.com:WMudgeEllis/street_smart_fe.git
  
  bundle install 
  
  rails db:{create, migrate}

  bundle exec figaro install
  
  ```
  
### Access Constraints 

  - To report new hazards on the application, users will need to authenticate using Google. The application landing page will show users a map with nearby hazards, but only after authentication can users create, vote on, and delete hazards. 


### Reporting Hazards

  - To report a hazard, authenticated users will need to drag and drop the pin on the dynamic map to the place where the witnessed the hazard. After moving the pin, the authenticated user will need to enter a tile, an optional description, and select whether the hazard is an animate or inanimate hazard.

### Voting on Hazards

  - Authenticated users have the opportunity to vote on any hazard. Users can only upvote or downvote on a specific hazard once. Vote coutns are displayed on each hazards show page

### Deleting a Hazard 

  - After creating a hazard, an authenticated user has the ability to delete any of their own hazards. This allows for users to remove hazards with errors or that are no longer relevant to the commmunity. 
  
### Authorization for API usage
  
  - For successful local deployment, you will need to acquire credentials for Google OAuth2. More information can be found [here](https://developers.google.com/identity/protocols/oauth2)
  - This application also requires authorization for the GoogleMaps JavaScript API. More information can be found [here](https://developers.google.com/maps/documentation/javascript/overview)
  - After obtaining these credentials, they can be added to `config/application.yml` for safe storage through Figaro. More information on how to use the Figaro gem can be found [here](https://github.com/laserlemon/figaro)


### How to run the test suite

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

