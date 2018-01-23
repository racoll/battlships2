require "board"

RSpec.describe Board do

  subject(:board) { described_class.new }

  describe "board" do

    # it "has a cell count of 1"0""0"" do
    #   expect(board.cell_count).to eq(1"0""0")
    # end

    it "has a grid structure of 10x10 cells of 0's" do
      expect(board.default_grid).to eq([["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"],
                                        ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]])
    end

    # # place ship by index of array: ("0", 3) etc
    # it "can accept a ship placement of a single cell which alters the grid" do
    #   # board = Board.new
    #   board.place_ship(1) # because a grid is initialized with a new board
    #   expect(board.place_ship(1)).to eq("altered grid!")
    # end

    it "can can isolate the first cell on the grid" do
      expect(board.position_1).to eq("0")
    end

    it "can change a specific cell on the board" do
      board.place_ship_1(0, 0, "x")
      expect(board.grid[0][0]).to eq("x")
  end

    it "can display the state of the board" do
      expect(board.display_board).to eq(board.grid)
    end

    it "can accept a ship of size 3 and change the board horizontally" do
      board.place_ship_3_horizontal(0, 0, "x")
      expect(board.grid[0][0]).to eq("x")
      expect(board.grid[0][1]).to eq("x")
      expect(board.grid[0][2]).to eq("x")
    end

    it "can accept a ship of size 3 and change the board vertically" do
      board.place_ship_3_vertical(3, 3, "x")
      expect(board.grid[3][3]).to eq("x")
      expect(board.grid[4][3]).to eq("x")
      expect(board.grid[5][3]).to eq("x")
    end

    it "can accept an attack" do
      board.place_ship_3_vertical(5, 6, "x")
      board.attack(6, 6)
      expect(board.grid[6][6]).to eq("+")
    end

end

end
