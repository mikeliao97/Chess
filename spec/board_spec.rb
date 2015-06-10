require 'spec_helper'
describe Board do
    context "initialize with no parameters" do
         before :each do
            @board = Board.new
         end 
         
         describe "#new" do
            it "takes no parameters and returns default instance of Board" do
                expect(@board).to be_an_instance_of Board
            end
         end 

    end

    context "Board has a grid" do
        before :each do 
            @board = Board.new
        end

        describe "grid" do
            it "grid has 8 elements" do
                    expect(@board.grid.length).to eql 9
            end

        end


    end


     context "testing methods" do
         before :all do
              @board = Board.new
         end 

    
         describe "#get_cell" do
            it "A1 = [1][1]" do
                expect(@board.get_cell("A", 1) == @board.grid[1][1])
            end

            it "A2 = [1][2]" do
                expect(@board.get_cell("A", 2) == @board.grid[1][2])
            end

            it "H8 = [8][8]" do
                    expect(@board.get_cell("H", 8) == @board.grid[8][8])
            end

            it "raises error when invalid input" do

                    expect {@board.get_cell("fda", 8) }.to raise_exception(ArgumentError)
            end
        end
        
    end

end
