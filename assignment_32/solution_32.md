# Assignment 32
* note, the issue for this assigment should still go in your Assignments repo. Please add a comment for the link to this repo and a link to see it running on Heroku.
* deploy the app with your movie query functionality out to Heroku
* you will need to add a Procfile (included in this folder)
* you will need to add the following to your Gemfile (please read the comments to remind yourself why each Gem is necessary):


```ruby
# User the 'thin' server instead of the default webrick
gem 'thin'

# Use postgres and the Heroku rails gem for Heroku
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# For now, continue to use sqlite3 in development
# Also use pry for the console
group :development do
  gem 'sqlite3'
  gem 'pry-rails'
end
```
