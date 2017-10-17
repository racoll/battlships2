require "board"

RSpec.describe Board do

  subject(:board) { described_class.new }

  describe "board" do

    it "has a cell count of 2" do
      expect(board.cell_count).to eq(2)
    end

    it "has a structure of two cells" do
      expect(board.structure).to eq([0, 0])
    end

  end

end
