# Description
Test case for checking if models work as expected.

The test case should work for any geometry type.

# Preerquisites
The game is running. The camera should be set to 3rd person.

# Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Do nothing. | The player model should stand still in the default position as shown [here](Resources/stand.jpg). |
| 2 | Press space. | The player model should move up but no animation should be playerd. It should still hold the same position as in the previous step. |
| 3 | Hold W. | The player model should start moving. It should play the walk animation shown [here](Resources/walk.mp4). |
| 4 | Hold A. Hold S. Hold D. | For each of these inputs the model should move in the same way it dit in the previous step.|
| 5 | Hold W and Shift at the same time. | The player model should start moving. It should play the run animation shown [here](Resources/run.mp4). |
