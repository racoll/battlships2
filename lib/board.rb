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

    def place_ship_3(x, y, val)
      # a = [1, 2, 3, 4]
      # a[1..2] = [0] * 2
      # @grid[0][0..2] = "x, " * 3
      @grid[0][0..2] = ["x"] * 3
      @grid
    end




end
