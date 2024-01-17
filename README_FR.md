# Kata E2E UUV
[English version](./README.md)

## Objectif
Le but de ce kata est, au travers de quelques exercices, de s'entraîner à l'écriture de test bout en bout (E2E) avec l'outil [UUV](https://orange-opensource.github.io/uuv/).

L'application web pour laquelle nous devons écrire des tests E2E est [Weather App](https://e2e-test-quest.github.io/weather-app/).

Il s'agit d'une application simple qui affiche la météo pour quelques villes.

## Mise en place de votre environnement
1. Cloner ce dépôt Git au sein d'un répertoire que nous appellerons `KATA_HOME`
2. Installer [l'autocomplétion](https://orange-opensource.github.io/uuv/fr/docs/getting-started/configuration#autocompl%C3%A9tion) dans l'IDE (Si intelliJ, ne pas exécuter en tant qu'administrateur)
3. Ouvrir le projet dans l'IDE
4. Ensuite lancer depuis un terminal :
   ``` shell
   npm install
   ```
5. Exécuter le test `first-test.feature` :
   - Depuis **Intellij** : Lancer la tâche UUV ["open"](https://github.com/e2e-test-quest/kata-e2e-uuv/blob/main/assets/uuv_run_configuration.PNG?raw=true) (si vous avez des soucis de droits, cochez la case `Use local npm script`)
   - Depuis un **terminal** :
       ``` shell
       npx uuv open
       ```
6. Vous êtes prêt à commencer l'exercice

## Exercices
0. **Hello World** : Corriger le test pour qu'il soit passant

1. **Homepage** : Vérifier que sur la page d'accueil, les éléments suivants sont visibles:
    - un titre `Welcome to Weather App`
    - un bouton `Get started`<br>
    [Voir la Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/main...01-homepage)
   
2. **Weather** : Vérifier que depuis la page d'accueil, lorsqu'on clique sur `Get started`, alors les éléments suivants sont visibles:
    - un texte `Nothing to display`
    - La liste des villes dans le volet de gauche `['Douala', 'Tunis', 'Limoges']`<br>
    [Voir la Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/01-homepage...02-weather)
   
3. TownSelection : Vérifier que depuis la page avec l'url `https://e2e-test-quest.github.io/weather-app/?isStarted=true`, lorsqu'on sélectionne la ville `Douala`, les éléments suivants sont visibles dans la partie détail :
   - un titre `Douala`
   - un texte `min: 10.8 °c`<br>
   [Voir la Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/02-weather...03-town-selection)
   
4. **Filter** : Vérifier que depuis la page avec l'url `https://e2e-test-quest.github.io/weather-app/?isStarted=true`, lorsqu'on saisit le texte `i` dans le champ de recherche et qu'on clique sur le bouton rechercher, alors les villes disponibles : `['Tunis', 'Limoges']`<br>
   [Voir la Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/03-town-selection...04-filter)

5. **Pour aller plus loin** : Vous pouvez :
    - Effectuez des vérifications d'accessibilité : Consulter [cette page](https://orange-opensource.github.io/uuv/fr/docs/recommendations/improving-accessibility) pour plus d'informations   
    - Vérifiez que vous avez respectez [les recommandations](https://orange-opensource.github.io/uuv/fr/docs/recommendations/writing-good-e2e-tests/) de phrases basées sur l'accessibilité
    - Mocker l'appel à l'url https://e2e-test-quest.github.io/weather-app/assets/data/mock.json pour changer la liste des villes disponibles 
    - Lancer les tests sur un ipad mini
    - Créer une [Phrase personnalisée](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition) pour la vérification des villes disponibles<br>
    [Voir la Solution](https://github.com/e2e-test-quest/kata-e2e-uuv/compare/04-filter...5-go-further)
   
## Liens utiles
- [Comment écrire de bons tests E2E ?](https://orange-opensource.github.io/uuv/fr/docs/recommendations/writing-good-e2e-tests/)
- [Dictionnaire de phrases](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description)
- [Click action](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#i-click)
- [phrases par rôles](https://orange-opensource.github.io/uuv/fr/docs/wordings/generated-wording-description/en-generated-wording-description#par-r%C3%B4le)
- [création de phrase personnalisée](https://orange-opensource.github.io/uuv/fr/docs/wordings/add-custom-step-definition)
