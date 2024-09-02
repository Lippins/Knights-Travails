# Knight’s Travails

## Overview

A Ruby program that calculates the shortest path a knight can take on a chessboard to get from one square to another. The project uses a breadth-first search (BFS) algorithm to ensure that the shortest possible path is found.

## Features

- Breadth-First Search (BFS) Implementation: Ensures the shortest path is always found by exploring all possible moves level by level.
- `Node`, `Knight` and `Board` Classes: They handle different responsibilities, making the code easy to manage and extend.
- Visual Representation: The project includes a `KnightHelpers` module to display the knight’s path on the chessboard, both as a list of moves and as a visual grid.

## How It Works

1. Starting and Target Positions: You provide the starting and target positions on an 8x8 chessboard. These positions are represented as 2D coordinates, such as [0,0] for the top-left corner, or [3,3] for the center square.
2. Breadth-First Search: The program uses BFS to explore all possible moves the knight can make. It starts from the initial position and works its way towards the target, ensuring that the first time it reaches the target, it has done so via the shortest path.
3. Path Visualization: Once the path is found, the program can display it both as a simple list of moves and as a visual grid where you can see the knight’s progress across the board.

## Getting Started

### Prerequisites

Ruby installed on your machine.

### Running the Program

1. Clone the Repository: First, clone the repository to your local machine.

```bash
git clone https://github.com/Lippins/Knights-Travails.git
```

2. Head into the project directory

```bash
cd Knights-Travails
```

3. Run the Program:

You can run the main Ruby file to see the knight’s shortest path in action.

```bash
ruby main.rb
```

This will display the path the knight takes and a visual representation of the board.

#### Example

If the knight starts at [0,0] and the target is position [7,7], the program will calculate the shortest path and output something like this:

```bash
Path Breakdown:
• [0,0] → • [2,1] → • [4,2] → • [6,3] → • [4,4] → • [6,5] → [7,7]

The knight starts at position [0, 0]
 and makes its way through the board following the numbers,
 eventually reaching [7, 7].

Knight's Path:
      0      1      2      3      4      5      6     7
  ---------------------------------------------------------
0 | 0𐂃  |      |      |      |      |      |      |      |
  ---------------------------------------------------------
1 |      |      |      |      |      |      |      |      |
  ---------------------------------------------------------
2 |      | 1𐂃  |      |      |      |      |      |      |
  ---------------------------------------------------------
3 |      |      |      |      |      |      |      |      |
  ---------------------------------------------------------
4 |      |      | 2𐂃  |      | 4𐂃  |      |      |      |
  ---------------------------------------------------------
5 |      |      |      |      |      |      |      |      |
  ---------------------------------------------------------
6 |      |      |      | 3𐂃  |      | 5𐂃  |      |      |
  ---------------------------------------------------------
7 |      |      |      |      |      |      |      | 6𐂃  |
  ---------------------------------------------------------
```
