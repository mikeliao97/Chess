require 'spec_helper'
describe Board do
    context "initialize with no parameters" do
         before :each do
             @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)

         end 
         
         describe "#new" do
            it "takes no parameters and returns default instance of Board" do
                expect(@board).to be_an_instance_of Board
            end
         end 

    end

    context "Board has a grid" do
        before :each do 
            @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
        end

        describe "grid" do
            it "grid has 9 elements" do
                    expect(@board.grid.length).to eql 9
            end

        end


    end


     context "testing methods" do
         before :all do
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
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
            
            it "has a Rook at A1" do
                    puts @board.get_cell("A", 1).to_s
                    puts @board.get_cell("A", 1).class
                    expect(@board.get_cell("A", 1).to_s) == "Rookfdsafdafdsfdsafdsfs"

            end
            it "has the Cell class when empty" do
                    puts @board.get_cell("C", 1).class
                    expect(@board.get_cell("C", 1)).class == Cell
            end
            
            it "has the Piece class when empty" do
                    puts @board.get_cell("A", 2).class
                    expect(@board.get_cell("A", 2)).class == Knight
            end

            it "raises error when invalid input" do

                    expect {@board.get_cell("fda", 8) }.to raise_exception(ArgumentError)
            end

            it "recognizes color the black side" do
                expect(@board.get_cell("H", 1).color).to eq(:black)

            end
            
            it "recognizes color the white side" do
                expect(@board.get_cell("B", 1).color).to eq(:white)

            end

        end
        
    end

    context "#new" do
        before :all do 
            @player1 = Player.new(name: "Johnny", color: :white)
            @player2 = Player.new(name: "Patrick", color: :black)
        end
        it "valid when passed with two player" do
                expect {Board.new(@player1, @player2)}.to_not raise_exception()
            end
    
    end

    context "#display_board" do
            before :all do
                 @player1 = Player.new(name: "Johnny", color: :white)
                 @player2 = Player.new(name: "Patrick", color: :black)
                 @board = Board.new(@player1, @player2)
            end
            
            it "raises no errors" do
                expect {@board.display_board}.to_not raise_exception()
            
            end
    end


end
