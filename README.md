# First Name Guesser Tests

Testing the First Name Guesser website with Cucumber + Capybara

===
## Background

### Cucumber

Cucumber is a tool that executes plain-text functional descriptions as automated tests. The language that Cucumber understands is called Gherkin. If you look at the `features/first_name_guesser_test.feature` file, you could see that it is very easy to understand what the test is trying to acomplish.

### Capybara

Capybara is a library written in the Ruby programming language which makes it easy to simulate how a user interacts with your application. Capybara can talk with many different drivers which execute your tests through the same clean and simple interface. `features/step_definitions/first_name_guesser.rb` is the Capybara test file.

===
## Before Running the Tests

	Download Firefox web browser (please use version 45)
	
	git clone https://github.com/dannili/first-name-guesser-tests.git

### Installation
To install Ruby use

	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	\curl -sSL https://get.rvm.io | bash -s stable --ruby
(Restart the terminal window after this installation)

To install QT use
	
	brew install qt

To install Cucumber use

	gem install cucumber

To install Capybara use

	gem install capybara

## Running the Tests

	cd ~/first-name-guesser-tests/
	
	cucumber features/first_name_guesser_test.feature

## Expected Test Results

There should be two failed tests, which catches the bugs on the web page.

Here I attached a youtube video of the test running on my machine:

https://youtu.be/-nnPWUeofu8
