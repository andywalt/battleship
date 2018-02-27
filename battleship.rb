require_relative 'battleship_class_definitions.rb'
require_relative 'battleship_game_helpers.rb'

# Start Game

human_fleet_1 = Fleet.new()
human_fleet_2 = Fleet.new()

puts <<-eos
  Welcome to BATTLESHIP!
  Below is a list of your battleships.

  Fleet table
  | #  | Ship             | Size |
  | -- | ---------------- | ---- |
  | 1x | Aircraft carrier | 5    |
  | 1x | Battleship       | 4    |
  | 1x | Cruiser          | 3    |
  | 1x | Destroyer        | 2    |
  | 1x | Submarine        | 1    |
eos

pre_display_board

# Layout ships on the boards
get_user_input(human_fleet_1)
get_user_input(human_fleet_2)
# random_get_user_input(computer_fleet)

# Create Player 1 board
human_board_1 = PlayerBoard.new(human_fleet_1)
human_board_1.generate_board(["Player 1 Board"])

# Create Player 2 board
human_board_2 = PlayerBoard.new(human_fleet_2)
human_board_2.generate_board(["Player 2 Board"])


# Create human screen (view of the hits and misses)
human_screen_1 = PlayerScreen.new(human_board_2)
human_screen_1.generate

# Create human screen (view of the hits and misses)
human_screen_2 = PlayerScreen.new(human_board_1)
human_screen_2.generate


# Start battle
battle(human_board_1, human_screen_1, human_board_2, human_screen_2)