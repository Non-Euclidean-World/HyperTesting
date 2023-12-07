## Lamps work

### Description
Test case for checking if the player can place lamps on the scene and collect them back to the inventory.

The test case should work for all geometries.

### Prerequisites
The game is running.

The camera is in 1st person mode.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Press `LMB` | New lamp should appear in front of you. The lamp should illuminate the ground below it, see [here](Resources/lamp.png). The counter indicating how many lamps there are in the inventory (located under the yellow light bulb icon in the hotbar) should decrement by one |
| 2 | Press `RMB` | The lamp should disappear and the in-inventory lamp counter should increment by one |
