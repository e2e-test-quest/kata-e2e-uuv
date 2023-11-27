# Kata E2E UUV
[Version Française](./README_FR.md)

## Goal
The purpose of this kata is, through a few exercises, to practice writing end-to-end (E2E) tests with the [UUV](https://orange-opensource.github.io/uuv/) tool.

The web application for which we are to write E2E tests is [Weather App](https://e2e-test-quest.github.io/weather-app/).

It's a simple application that displays the weather for a few towns.

## Set up your environment
1. Clone this Git repository in a directory we'll call `KATA_HOME`
2. Install [autocompletion](https://orange-opensource.github.io/uuv/fr/docs/getting-started/configuration#autocompl%C3%A9tion) in the IDE (if intelliJ, do not run as administrator)
3. If you're using intelliJ, install the `UUV` plugin (File > Settings > plugins) to run tests from the IDE.
4. Open project in IDE
5. Then execute from a terminal ```npm install```
9. Check that the file `first-test.feature` can be executed via the task ["open"](https://github.com/e2e-test-quest/kata-e2e-uuv/blob/main/assets/uuv_run_configuration.PNG?raw=true) (if you have rights problems, check the `Use local npm script` ckeckbox) otherwise run the following command ```npm run uuv open```. 
10. You're ready to work out

## Exercises
0. **Hello World** : Correct the test to make it successful
1. **Homepage** : Check that the following elements are visible on the home page:
    - a title `Weather App`
    - a button `Get started`

2. **Weather** : Check that from the home page, when you click on `Get started`, the following elements are visible:
    - a text `Nothing to display`
    - The list of towns in the left panel `['Douala', 'Tunis', 'Limoges']`

3. TownSelection : Check that from the home page, when you click on `Get started`, then select the city `Douala`, the following elements are visible in the details section :
   - a title `Douala`
   - a text `min: 10.8 °c`

4. **Filter** : Check that from the home page, when you click on `Get started`, then enter the text `i` in the search field and click on the search button, the towns available are : `['Tunis', 'Limoges']`

5. **To go further** : You can also :
    - Check that you have respected [the recommendations](https://orange-opensource.github.io/uuv/fr/docs/test/recommendation#1-requ%C3%AAtes-bas%C3%A9es-sur-laccessibilit%C3%A9) of accessibility-based sentences  
    - Mock the https://e2e-test-quest.github.io/weather-app/assets/data/mock.json url call to change the list of available towns 
    - Running tests on an iPad mini
    - Create a [custom sentence](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition) to check available towns 

## Helpful links
- [Sentence dictionary](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description)
- [Click action](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#i-click)
- [sentences by role](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#par-r%C3%B4le)
- [Create custom sentence](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition)
