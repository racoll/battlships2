class Board

   def initialize
     @cell_count = 9
     @structure = [[0, 0, 0],[0, 0, 0],[0, 0, 0]]
   end


    def cell_count
      @cell_count
    end


    def structure
      @structure.each do |r|
        puts r.each { |p| p }.join(" ")
      end
    end

end
