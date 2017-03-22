# DRIVE

Database Realtime Incident Viewing Environment

This is the web application side of the system our team has developed for [Road Safety Idea Hack 2017](http://www.ideahack2017.com/).
It uses the [DRIVER](https://roadsafety.io/) API to fetch and display road accident data.
It also doubles up as the API endpoint for the 2 Android applications.

Live Demo: https://drive-app.herokuapp.com/

## Setting Up

[DRIVER](https://roadsafety.io/) requires a token to access its API. You can get one by logging in and going to your `Account` tab.
After obtaining the token, set up an `ACCESS_TOKEN` environment variable.
```ruby
# /config/initializers/dev_environment.rb

unless Rails.env.production?
  ENV['ACCESS_TOKEN'] = 'YOUR_ACCESS_TOKEN'
end
```
