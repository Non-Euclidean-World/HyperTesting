# Car controls

## Description
Test case for checking if the car behaves as expected.

The test case should work for all geometries.

## Prerequisites
The game is running.

The player is inside the car.
The camera is set to 3rd person.
The car is not blocked by any obstacle.

## Steps
| Step | Action | Expected Result |
| -------- | -------- | -------- |
| 1 | Hold W | The car moves forward, see [here](Resources/forward.mp4). |
| 2 | Hold W and A | The car turns left, see [here](Resources/left-turn.mp4). |
| 3 | Hold W and D | The car turns right, see [here](Resources/right-turn.mp4). |
| 4 | Do nothing | The car slows down and eventually stops moving |
| 5 | Hold S | The car moves in reverse, see [here](Resources/reverse.mp4) |
| 6 | Hold the same keys as in steps 1-3 and 5 but additionaly hold Shift  | The car moves as in steps 1-3 and 5 correspondingly but faster |
| 7 | Hold Space  | The car stops moving |
