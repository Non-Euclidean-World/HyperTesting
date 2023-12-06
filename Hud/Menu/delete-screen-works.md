## Delete screen works 

### Description
Test case for checking if the delete section of the menu works.

### Prerequisites
The application is running but no game is created. 
You should have some game saves in the file system.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Press the `Delete` button. | The delete screen should be visible as shown [here](Resources/delete-game.png). |
| 2 | Click each tile. | Clicking on a tile should remove it. After a tile is removed, the remaining tiles rearrange themselves to fill the gap. The tiles move sequentially towards the top-left corner.
| 3 | Start a new game and return to the `Delete` screen. | The top left tile should have the name of the game you just cerated. |
| 4 | Click the tile with the name of the game you just created. | Nothing should happen. |
