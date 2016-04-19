# CatApiTest

a Ruby command line utility .
for Cat lovers

The command should have the following interface:

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

