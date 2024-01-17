Feature: A11y

  Scenario: Axe Core
    When I visit path "https://e2e-test-quest.github.io/weather-app/"
    Then I should not have any axe-core accessibility issue

#  Work in progress
#  Scenario: RGAA
#    When I visit path "https://e2e-test-quest.github.io/weather-app/"
#    Then I should not have any rgaa accessibility issue