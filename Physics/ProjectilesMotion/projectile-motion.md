# Description
Test case for checking if projectiles behave as expected.

The test case should work for all geometries.

# Prerequisites
The game is running.

The camera is facing upward at around 45 degrees.
The gun is the selected item.

# Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Click LMB | The projectile should fire. |
| 2 | Do nothing | The projectile should move along a parabola as can be seen [here](Resources/projectile-parabola.mp4) |
| 3 | Do nothing | The projectile should land on the ground |
| 4 | Do nothing | The projectile should disappear after a few seconds |
