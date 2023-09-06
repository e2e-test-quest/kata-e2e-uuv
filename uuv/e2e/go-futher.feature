Feature: Go futher
  Scenario: Mocking town list
    Given I mock a request GET on url "https://e2e-test-quest.github.io/weather-app/assets/data/mock.json" named "mock-weather-app" with fixture mock-weather-app
    And I visit path "https://e2e-test-quest.github.io/weather-app/"
    # Click on <Get started> button
    When I click on button named "Get started"
    # Checks the list of available towns.
    Then I should see a list named "Available Towns" and containing
      | Douala |
      | Tunis  |
      | Lille  |
      | Dubaï  |
