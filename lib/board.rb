class Board

    attr_reader :grid # allows us to use method 'grid' on board_spec

   def initialize(grid = default_grid) # initialize with a default grid, specified as 'grid'
    #  @cell_count = 100
    #  @structure = [[0, 0, 0],[0, 0, 0],[0, 0, 0]]
     @grid = grid # grid = @grid
   end

    def default_grid
      @grid ||= Array.new(10) {Array.new(10) { "0" } } # if @grid does not have a value, assign it to an array of 10 arrays, all containing "0"s
    end

    def position_1
      grid1 = @grid[0] # pass argument of [0] on @grid, and assign to grid1
      grid1[0] # pass argument of [0] on grid1
    end

    def place_ship_1(x, y, val) # pass 3 arguments, x and y positions and val as the value
      @grid[x][y] = val # says that at position x,y of @grid, replace with val.
      @grid
    end

    def display_board
      @grid.each do |cell| # for each component of the grid, take each component....
        puts cell.each { |p| p }.join(" ") # for each component (each array) put on a new paragraph through 'puts'
      end
    end

    # def place_ship_3(x, y, val)
    #   @grid[x][y] = "x, x, x" # this just replaces one "0" with 3 "x"s
    # end

    def place_ship_3_horizontal(x, y, val)
      # @grid[x][0..2] = ["x"] * 3
      @grid[x][y] = val
      @grid[x][y+1] = val
      @grid[x][y+2] = val
      @grid
    end

    def place_ship_3_vertical(x, y, val)
      @grid[x][y] = val
      @grid[x+1][y] = val
      @grid[x+2][y] = val
      @grid
      # location = @grid[6][4]
      # location[6..8] = ["x"] *3
      # @grid[6][4][4..2] = ["x"] * 3
      # @grid
    end
    # eventually pass another argument of ship size!

    # def attack(x, y, val)
    #   val = "-"
    #     if @grid[x][y] = "0"
    #         @grid[x][y] = val
    #         @grid
    #         "MISS!"
    #       else
    #         @grid[x][y] = "x"
    #         @grid[x][y] = val
    #         @grid
    #         "HIT!"
    #     end
    # end

    # def attack(x, y, val)
    #   outcome = "MISS!"
    #   val = "-"
    #     if @grid[x][y] == "0"
    #        @grid[x][y] = val
    #       elsif @grid[x][y] == "x"
    #             outcome = "HIT!"
    #             @grid[x][y] = val
    #       else
    #       @grid[x][y] = val
    #     end
    #     [@grid, outcome]
    # end

    def attack(x, y, val)
      val = "-"
      @grid[x][y] = val
      @grid
    end



end
