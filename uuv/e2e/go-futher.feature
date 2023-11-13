Feature: Go futher
  Background:
    Given I set viewport to preset "ipad-mini"

  Scenario: Mocking town list
    Given I mock a request GET on url "https://e2e-test-quest.github.io/weather-app/data/mock.json" named "mock-weather-app" with fixture mock-weather-app
    And I visit path "https://e2e-test-quest.github.io/weather-app/?isStarted=true"
    # Checks the list of available towns.
    Then I should see a list named "Available Towns" and containing
      | Douala |
      | Tunis  |
      | Lille  |
      | Dubaï  |
