require "board"

RSpec.describe Board do

  subject(:board) { described_class.new }

  describe "board" do

    it "has a cell count of 9" do
      expect(board.cell_count).to eq(100)
    end

    it "has a grid structure of 3x3 cells of 0's" do
      expect(board.structure.length).to eq(10)
    end


  end

end
