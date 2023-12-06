## New game screen works 

### Description
Test case for checking if the new game section of the menu works.

### Prerequisites
The game is running. 
You should have 3 names that no existing game save has.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Press `Esc`. Press the `New Game` button. | The new game screen should be visible as shown [here](Resources/new-game-no-input.png). |
| 2 | Press `Input Game Name` and input some name. Make sure that there is no save with the same name as the one you input. | The new game screen should look like [this](Resources/new-game.png). The `Input Game Name` area should now have a green outline and have the name you input displayed. |
| 3 | Press the `Start Hyper` button. | A new game should be create in the Hyperbolic geometry. |
| 4 | Repeat the steps 1-4 creating new games. But this time create a Euclidean game and a Spherical game. | The results should be the same. |
| 5 | Press `Esc` and open the `New Game` screen again. Input a name you previously used. | The `Input Game Name` area should now have a red outline as shown [here](Resources/new-game-already-exists.png). Clicking the Start buttons should have no effect. |
