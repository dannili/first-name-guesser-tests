# This is the Cucumber test file.
# Each test scenario starts with "@" and the steps are easy to understand.
# The test data are under "Examples".

@first_name_guesser_page_validation
Feature: Test the First Name Guesser webpage

@verifyPageContent
Scenario: Verify First Name Guesser Page content
  Given I am on the First Name Guesser page
  Then I should see "Enter a name, and I'll try to figure out the first name!"
  And I should see "GO"

@testGoButton
Scenario: Verify if the GO button works
  Given I am on the First Name Guesser page
  When I hit "GO"
  And I should see "Given name:"

@testGuessResult
Scenario Outline: Verify the correct first name is shown as the result
  Given I am on the First Name Guesser page
  When I fill in "name" with "<Name>"
  And I hit "GO"
  And I should see "Given name: <Result>"

  Examples:
  | Name                                | Result |
  | Danni M. Li                         | Danni  |
  | Danni                               | Danni  |
  | Danni Li                            | Danni  |
  | Li, Danni                           | Danni  |
  | Miss. Danni Li                      | Danni  |
  | Miss D. Li                          | D.     |
  | Miss Danni Li                       | Danni  |
  | Miss Li                             | Li     |
  | Danni Li, PhD                       | Danni  |
  | Jack Jonathon Zebedde Mangle-Wurzle | Jack   |

@testSecurityScanners
Scenario Outline: Verify the page does not have XSS bugs
  Given I am on the First Name Guesser page
  When I fill in "name" with "<Name>"
  And I hit "GO"
  And I should see "Given name: <Result>"

Examples:
  | Name           | Result |
  | <script>alert('hello')</script> | <script>alert('hello')</script> |
  | <u>test</u>                     | <u>test</u>                     |
