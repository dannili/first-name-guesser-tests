# First Name Guesser Tests

Testing the First Name Guesser website with Cucumber + Capybara

===
## Background

### Cucumber

Cucumber is a tool that executes plain-text functional descriptions as automated tests. The language that Cucumber understands is called Gherkin. If you look at the `first_name_guesser_test.feature` file, you could see that it is very easy to understand what the test is trying to acomplish.

### Capybara

Capybara is a library written in the Ruby programming language which makes it easy to simulate how a user interacts with your application. Capybara can talk with many different drivers which execute your tests through the same clean and simple interface.

===
## Before Running the Tests

### Installation

To install Cucumber use

    `gem install cucumber`


To install Capybara use

    `gem install capybara`

## Running the Tests

	`cucumber features/first_name_guesser_test.feature`

## Expected Test Results

There should be two failed tests, which catches the bugs on the web page.