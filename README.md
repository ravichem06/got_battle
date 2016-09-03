GOT Battles is a simple database of battles in Game of thrones.

Instructions to setup the project:

1.	Clone the repo
2.	Run `cd got_battle`
3.	Run `bundle install`
4.	Run `rails s`
5.	If there is an error while starting server: 
    Then using command line run:
    `vim /usr/local/var/rbenv/versions/2.3.1/lib/ruby/gems/2.3.0/gems/soulmate-1.1.0/lib/soulmate/server.rb`
    Then replace line 3: `require 'Rack/contrib'` with `require 'Rack/jsonp'`

    This error is caused because of the dependancy issues of several gems caused with Rails 5 and especially Rack 2.0.
    
6.	Again run `rails s` and it should start-up fine.
7.	Open browser and type `localhost:3000` to access the portal.
