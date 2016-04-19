# CatApiTest

A Ruby command line utility for Cat lovers

## Installation

Add this line to your application's Gemfile, once loaded the gem manually (THIS IS ONLY FOR TESTING PURPOSES, not linked to rubygems):

    gem 'catApiTest'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install catApiTest

## Usage

The command  have the following interface:

$ ruby cata.rb [browser|file|fact]

with browser being the default if no arguments are passed.

The program  interacts with the following public APIs:

http://thecatapi.com/

http://catfacts-api.appspot.com/doc.html

The command should:

with browser, open a new browser window displaying an image of a cat;

with file, it should save on the desktop an image of a cat, as an image file;

with fact, it should print to stdout a cat fact;

also, implement a new argument of your choice to expand the program.

support only ubuntu/linux operating systems.

The testing is using RSPEC 3.

You may need to install it

gem install rspec


## Contributing

1. Fork it ( http://github.com/<my-github-username>/catApiTest/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
