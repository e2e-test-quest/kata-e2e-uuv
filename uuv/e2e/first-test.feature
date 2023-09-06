Feature: First test

  Scenario: Homepage
    When I visit path "https://e2e-test-quest.github.io/weather-app/"
    Then I should see a title named "Welcome to Weather App"
     And I should see a button named "Get started"

  Scenario: Weather - "Nothing to display" must be displayed
    Given I visit path "https://e2e-test-quest.github.io/weather-app/"
    # Click on <Get started> button
    When I click on button named "Get started"
    # Check that there's nothing to display because there is no town selected.
    Then I should see a title named "Nothing to display"

  Scenario: Weather - Town List must be ok
    Given I visit path "https://e2e-test-quest.github.io/weather-app/"
    # Click on <Get started> button
    When I click on button named "Get started"
    # Checks the list of available towns.
    Then I should see a list named "Available Towns" and containing
      | Douala  |
      | Tunis   |
      | Limoges |

  Scenario: TownSelection - Douala
    Given I visit path "https://e2e-test-quest.github.io/weather-app/?isStarted=true"
    # Select Douala town
    And within a list named "Available Towns"
    When I click on element with role "listitem" and name "Douala"
    # Check the weather details for Douala town
    Then within the element with aria-label "Weather of Douala"
    And I should see a title named "Douala"
    And I should see an element with content "min: 10.8 °c"
    
  Scenario: TownResearch - Filter
    Given I visit path "https://e2e-test-quest.github.io/weather-app/?isStarted=true"
    # Type sentence "i" on input field
    And I type the sentence "i" in the text box named "Search for a town"
    # Click on <Filter> button
    When I click on button named "Filter"
    # Simulate human latency
    And I wait 500 ms
    # Checks the list of available towns.
    Then I should see a list named "Available Towns" and containing
      | Tunis   |
      | Limoges |
