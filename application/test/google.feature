
    Feature: Screenshot testing
    
      Scenario: Search Akeed In Google then take screen shot
        Given I navigate to "https://www.google.com"
        And I wait for "2" sec
        When I enter "Akeed" into input field having "name" "q"
        Then I press enter in "name" "q"
        And I take screenshot "Akeed"
