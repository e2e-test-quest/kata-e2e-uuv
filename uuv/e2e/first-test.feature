Feature: First test

  Scenario: Homepage
    When I visit path "https://e2e-test-quest.github.io/weather-app/"
    Then I should see a title named "Welcome to Weather App"
     And I should see a button named "Get started"

