GOT Battles is a simple database of battles in Game of thrones. Check out the demo without autocomplete by following the link below:

https://got-battles-api.herokuapp.com/

The application uses an autocomplete search box to search through models for relevant information. To see the application with autocomplete, follow the instructions below to setup the project locally.

Instructions to setup the project:

1.	Clone the repo
2.	Run `cd got_battle`
3.	Run `bundle install`
4.  Run `rake db:migrate`
5.	Run `rails s`
6.	If there is an error while starting server: 
    Then using command line run:
    `vim /usr/local/var/rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/soulmate-1.1.0/lib/soulmate/server.rb`
    Then replace line 3: `require 'Rack/contrib'` with `require 'Rack/jsonp'`

    This error is caused because of the dependancy issues of several gems caused with Rails 5 and especially Rack 2.0.
    
7.	Again run `rails s` and it should start-up fine.
8.	Open browser and type `localhost:3000` to access the portal.
