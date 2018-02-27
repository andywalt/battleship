# Display the Board Prior to Input

def pre_display_board
  @board = []
    10.times do
      @board << ["-","-","-","-","-","-","-","-","-","-"]
    end
    display_board(@board)
  end

# Get User Input

def ship_input_prompt(ship, name)
  puts "Enter the position of your #{name} (length #{ship.length}). Choose Row A-J and Column 1-10 (Ex: B5)."
  ship.position = gets.chomp
  puts "Enter the heading of your #{name} (H for Horizontal or V for Vertical)."
  ship.heading = gets.chomp
  p "Added #{name} to board!"
end

def get_ship(fleet, ship, name)
  ship_input_prompt(ship, name)
  ship.gen_coordinates
  while !(ship.check_position && fleet.check_coords(ship))
    p "Ship is out of bounds or collides with another ship, choose new location."
    ship_input_prompt(ship, name)
    ship.gen_coordinates
  end
    fleet.add_to_fleet_coords(ship)
end


def get_user_input(fleet)
  get_ship(fleet, fleet.aircraft_carrier, "Aircraft Carrier")
  get_ship(fleet, fleet.battleship, "Battleship")
  get_ship(fleet, fleet.cruiser, "Cruiser")
  get_ship(fleet, fleet.destroyer_1, "Destroyer 1")
  # get_ship(fleet, fleet.destroyer_2, "Destroyer 2")
  get_ship(fleet, fleet.submarine_1, "Submarine 1")
  # get_ship(fleet, fleet.submarine_2, "Submarine 2")
end


# The Battle - TO BATTLESTATIONS!

def human_shoot(human_screen)
  puts "Enter coordinates of shot: Choose Row A-J and Column 1-10."
  coords = gets.chomp
  human_screen.shoot(coords)
end


def battle(human_board_1, human_screen_1, human_board_2, human_screen_2)
  winner = false
  while !winner
    human_shoot(human_screen_1)
    human_screen_2.display
    human_board_1.display
    human_shoot(human_screen_2)
    human_screen_1.display
    human_board_2.display
  end
end

