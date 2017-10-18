require "board"

RSpec.describe Board do

  subject(:board) { described_class.new }

  describe "board" do

    it "has a cell count of 4" do
      expect(board.cell_count).to eq(4)
    end

    it "has a grid structure of 4x4 cells of 0's" do
      expect(board.structure).to eq([[0, 0],
                                     [0, 0]])
    end

    # it "has a grid structure of 4x4 cells of 0's" do
    #   expect(board.structure).to eq("0, 0\n0, 0")
    # end

  end

end
