class Board

   def initialize(grid = default_grid)
     @cell_count = 100
    #  @structure = [[0, 0, 0],[0, 0, 0],[0, 0, 0]]
     @grid = grid
   end



    def cell_count
      @cell_count
    end


    def default_grid
      @grid ||= Array.new(10) {Array.new(10) { "0" } }
      @grid.each do |cell|
        puts cell.each { |p| p }.join(" ")
      end
    end

    def place_ship(number)
      "altered grid!"
      # @grid
    end

    def position_1
      grid1 = @grid[0]
      grid1[1]
    end

    def position(x,y)
      @grid[x][y] = "x"
    end


end
