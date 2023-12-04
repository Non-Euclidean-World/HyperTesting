# Description
Test case for checking if the terrain generation is random.

The test case should work for any geometry type.

# Prerequisites
The game is running. The menu should be open. Choose a type of geometry should be chosen for this test. Every time you start a game you should start it in the same chosen geometry.

# Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Start the game by navigating to the `New Game` tab in the menu, inputting a unique name and pressing Start. | Some terrain should be generated. |
| 2 | Take note of what the terrain looks like. Also take note of the x,y coordinates the player is at. The coordinates can be found in the top left corner of the screen. Repeat step 1. | The generated terrain should be visibly different. Make sure that it looks different while standing in the same coordinates as before. |
