# Kata E2E UUV
[Version Française](./README_FR.md)

## Goal
The purpose of this kata is, through a few exercises, to practice writing end-to-end (E2E) tests with the [UUV](https://orange-opensource.github.io/uuv/) tool.

The web application for which we are to write E2E tests is [Weather App](https://e2e-test-quest.github.io/weather-app/).

It's a simple application that displays the weather for a few towns.

## Set up your environment
1. Clone this Git repository in a directory we'll call `KATA_HOME`
2. Install [autocompletion](https://orange-opensource.github.io/uuv/fr/docs/getting-started/configuration#autocompl%C3%A9tion) in the IDE (if intelliJ, do not run as administrator)
3. Open project in IDE
4. Then execute from a terminal :
   ``` shell
   npm install
   ```
5. Run the `first-test.feature` test :
   - From **Intellij**: Run the UUV task ["open"](https://github.com/e2e-test-quest/kata-e2e-uuv/blob/main/assets/uuv_run_configuration.PNG?raw=true) (if you have rights problems, check the `Use local npm script` ckeckbox)
   - From a **terminal** :
       ``` shell
       npx uuv open
       ```
6. You're ready to work out

## Exercises
0. **Hello World** : Correct the test to make it successful

1. **Homepage** : Check that the following elements are visible on the home page:
    - a title `Welcome to Weather App`
    - a button `Get started`<br>
    [See Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/main...01-homepage)

2. **Weather** : Check that from the home page, when you click on `Get started`, the following elements are visible:
    - a text `Nothing to display`
    - The list of towns in the left panel `['Douala', 'Tunis', 'Limoges']`<br>
    [See Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/01-homepage...02-weather)

3. TownSelection : Check that from the page with url `https://e2e-test-quest.github.io/weather-app/?isStarted=true`, when select the city `Douala`, the following elements are visible in the details section :
    - a title `Douala`
    - a text `min: 10.8 °c`<br>
    [See Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/02-weather...03-town-selection)

4. **Filter** : Check that from the page with url `https://e2e-test-quest.github.io/weather-app/?isStarted=true`, when enter the text `i` in the search field and click on the search button, the towns available are : `['Tunis', 'Limoges']`<br>
   [See Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/03-town-selection...04-filter)

5. **To go further** : You can also :
    - Make accessibility checks: Consult [this page](https://orange-opensource.github.io/uuv/docs/recommendations/improving-accessibility/) for more information  
    - Check that you have respected [the recommendations](https://orange-opensource.github.io/uuv/docs/recommendations/writing-good-e2e-tests) of accessibility-based sentences
    - Mock the https://e2e-test-quest.github.io/weather-app/assets/data/mock.json url call to change the list of available towns 
    - Running tests on an iPad mini
    - Create a [custom sentence](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition) to check available towns<br>
    [See Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/04-filter...5-go-further)
   
## Helpful links
- [How to write good E2E Tests ?](https://orange-opensource.github.io/uuv/docs/recommendations/writing-good-e2e-tests/)
- [Sentence dictionary](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description)
- [Click action](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#i-click)
- [sentences by role](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#par-r%C3%B4le)
- [Create custom sentence](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition)
