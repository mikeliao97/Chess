require "spec_helper"

#What should I really test for?
#That it returns balck
#
describe Rook do
    before :each do 
            @rook = Rook.new(color: :black)
    end

    describe "#new"  do
            it "takes one parameters and returns a Rook Object" do
                   expect(@rook).to be_an_instance_of(Rook)
            end
    end

    describe "#returns black" do
            it "returns :black" do
                    expect(@rook.color).to eq(:black)
            end
    end

    let(:user) {Rook.new()}
    describe "defualt returns white" do
            it "returns :white" do
                    expect(user.color).to eq(:white)

            end
    end


    describe "#valid_move?" do
        before :each do 
             @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
        end

        it "is not a valid move because a pawn blocks the move A1 - C1" do
            expect Rook.valid_move?('A1C1', @board) == false
        end

        it "is not a valid move because a pawn blocks the move A1 - C3" do
            expect Rook.valid_move?('A1C3', @board) == false
        end


    end
end


describe Bishop do
    describe "#valid_move?" do
        before :each do 
             @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)

        end

        it "H3-F5 fails due to pawn in front" do
            expect Bishop.valid_move?('H3F5', @board) == false
        end
        
        it 'A6 - C4 fails due to a pawn in front' do
            expect Bishop.valid_move?('A6C4', @board) == false
        end

    end
end


describe Queen do
    describe "#valid_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)

        end

        it "H3-F5 fails due to pawn in front" do
            expect Queen.valid_move?('H3F5', @board) == false
        end
        
        it 'A6 - C4 fails due to a pawn in front' do
            expect Queen.valid_move?('A6C4', @board) == false
        end

        it "is not a valid move because a pawn blocks the move A1 - C1" do
            expect Queen.valid_move?('A1C1', @board) == false
        end

        it "is not a valid move because a pawn blocks the move A1 - C3" do
            expect Queen.valid_move?('A1C3', @board) == false
        end
    end

    
end

