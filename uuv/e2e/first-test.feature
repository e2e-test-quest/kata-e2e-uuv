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

  Scenario: Keyboard navigation
    Given I visit path "https://e2e-test-quest.github.io/weather-app/"
    When I start a keyboard navigation from the top of the page
    Then the next keyboard element focused should be a link named "Weather App's Logo"
    And the next keyboard element focused should be a link named "Home"
    And the next keyboard element focused should be a button named "Get started"

  Scenario: Fill new town form with mouse
    Given I visit path "https://e2e-test-quest.github.io/weather-app/?isStarted=true"
    And I mock a request GET on url "https://e2e-test-quest.github.io/weather-app/data/mock.json" named "mock-new-town" with fixture mock-new-town.json
    And I mock a request POST on url "https://e2e-test-quest.github.io/weather-app/api" named "mock-post-new-town" with content "Success"
    And I click on button named "Add new town"

    And I type the sentence "Paris" in the text box named "Town name"
    And I type the sentence "10" in the spin button named "Latitude"
    And I type the sentence "123" in the spin button named "Longitude"
    And I type the sentence "Simple Description" in the text box named "Description"

    When I click on button named "Submit new town form"

    Then I should see a list named "Available Towns" and containing
      | Douala  |
      | Tunis   |
      | Limoges |
      | Paris   |

  Scenario: Fill new town form with keyboard
    Given I visit path "https://e2e-test-quest.github.io/weather-app/?isStarted=true"
    And I mock a request GET on url "https://e2e-test-quest.github.io/weather-app/data/mock.json" named "mock-new-town" with fixture mock-new-town.json
    And I mock a request POST on url "https://e2e-test-quest.github.io/weather-app/api" named "mock-post-new-town" with content "Success"

    When I click on button named "Add new town"
    And I start a keyboard navigation from the top of the page
    And the next keyboard element focused should be a link named "Weather App's Logo"
    And the next keyboard element focused should be a link named "Home"

    And the next keyboard element focused should be a text box named "Town name"
    And I type the sentence "Paris"

    And the next keyboard element focused should be a spin button named "Latitude"
    And I type the sentence "10"

    And the next keyboard element focused should be a spin button named "Longitude"
    And I type the sentence "123"

    And the next keyboard element focused should be a text box named "Description"
    And I type the sentence "Simple Description"

    And the next keyboard element focused should be a radio named "Small (under 150000)"

    And the next keyboard element focused should be a checkbox named "Allow automatic update"

    And the next keyboard element focused should be a button named "Back to town list"

    And the next keyboard element focused should be a button named "Submit new town form"

    And I click

    Then I should see a list named "Available Towns" and containing
      | Douala  |
      | Tunis   |
      | Limoges |
      | Paris   |
