## Chunks are generated 

### Description
Test case for checking if chunks are generated and removed based on the player's position.

The test case should work with hyperbolic and Euclidean geometries.

### Prerequisites
The game is running.
The menu should be open.
Choose a direction.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Move in the chosen direction. | New terrain should be generated. In the direction as shown [here](Resources/chunk-generated.mp4) |
| 2 | Look in the direction opposite of the chosen direction but move in the chosen direction for 10-30 seconds. |  The terrain in the opposite direction to the chosen one should disappear as shown [here](Resources/chunk-despawned.mp4). |
