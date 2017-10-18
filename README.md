USER STORIES:

BREAK THESE DOWN FURTHER!

As a player
So that I can amuse myself
I would like to start a 10x10 game of battleships.

# what is being 'changed'? The BOARD


As a player
So that I can understand what's going on
I would like to be able to see the current state of the game.

# what is being changed? the GAME

As a player
So that I can prepare for the game
I would like to be able to place a ship of size: [3] in my game.

# this is a PLAYER choice, but it is affecting the BOARD


As a player
So that I can lay my ship out properly
I would like to place a ship either horizontally or vertically.

# this is a PLAYER choice, but it is affecting the BOARD

As a player
So that I can have a coherent game
I would like my ship to be constrained to be on the board

# this is controlled by the BOARD

As a player
So that I can play the game
I would like to be able to fire at the board and know whether it's a hit or a miss.

# the Board is changing so BOARD responsibility

As a player
So that I can refine my strategy
I would like to know when I have sunk a ship.

# BOARD responsibility


RESPONSIBILITIES OF CLASSES:

GAME:
Initializes player1
Initializes player2
determines whose go it is
places a ship for a player
allows a player to take a shot
switch goes/players after each go

PLAYER:
creates a player with a name
creates a ship when a player is initialized


BOARD:
Is initialized with a 10x10 board (100 cells)
can assign ships to cells vertically
can assign ships to cells horizontally
returns a miss when water is hit
returns a hit when a ship is hit
returns error if ship is already present where player wants to place a ship
returns error if cell is hit twice
returns an error if ship is placed in non-existent cells
returns error if shot is on non-existent cell
