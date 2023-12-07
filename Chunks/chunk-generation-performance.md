## Chunk generation performance

### Description
Test case for checking if the terrain generation is random.

The test case should work with hyperbolic and Euclidean geometries.

### Prerequisites
The game is running. 
The menu should be open. 
A program that monitors the memory usage should be monitoring the usage of the game. 
Performance profiling tools available in Visual Studio or Rider are recommended.

### Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Take note of the memory usage. |  |
| 2 | Move in the same direction for at least 5 minutes. | The memory usage should rise. Once a certain level of memory usage is reached it should drop by a significant amount. Make sure that once some level is reached the memory drops as you continue moving the same direction. |
| 3 | Stop moving for at least 10 seconds. |  The memory usage should return to the level it was in step 1 after being stationary for 10 seconds. |
