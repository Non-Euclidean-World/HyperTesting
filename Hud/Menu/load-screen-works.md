## Load screen works 

### Description
Test case for checking if the load section of the menu works.

### Prerequisites
The game is running. 
Your game should have a name that no existing game save has.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Press `Esc`. Create a new game. Take note of the game name as well as what the terrain in the game looks like. Press `Esc` again. Press the `Load` button. | The load game screen should be visible as shown [here](Resources/load-game.png). The top left tile should have the name of the game you just created. |
| 2 | Click on the top left tile. | There should be no effect. |
| 3 | Click on some other tile. | A game should be loaded. The terrain should look different from the one in the game you just created. |
| 4 | Press `Esc`. Press the `Load` button. | The top middle tile should display the name of the game you created. |
| 5 | Click the top middle tile. | The game you created should be loaded. Make sure the terrain is the same. |
