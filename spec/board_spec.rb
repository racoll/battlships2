require "board"

RSpec.describe Board do

  subject(:board) { described_class.new }

  describe "board" do

    it "has a cell count of 100" do
      expect(board.cell_count).to eq(100)
    end

    it "has a grid structure of 10x10 cells of 0's" do
      expect(board.default_grid.length).to eq(10)
    end

    # place ship by index of array: (0, 3) etc
    it "can accept a ship placement of a single cell which alters the grid" do
      # board = Board.new
      board.place_ship(1) # because a grid is initialized with a new board
      expect(board.place_ship(1)).to eq("altered grid!")
    end

    it "can can isolate a specific cell on the grid" do
      expect(board.position).to eq("0")
    end
  end

end
