require "spec_helper"

#What should I really test for?
#That it returns balck
#
describe Rook do
    before :each do 
            @rook = Rook.new(color: :black)
    end


    describe "#possible_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns
              @rook = Rook.new(color: @player1.color, player: @player1) 
              @board.display_board
        end

        it "A1 - C1 returns true" do
            expect(Rook.possible_move?('A1C1', @board)).to eq(true)
        end

        it "A1 - C3 Returns false" do
            expect(Rook.possible_move?('A1C3', @board)).to eq(false)

        end

    end

    describe "#valid_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @rook = Rook.new(color: @player1.color, player: @player1) 
              @board.display_board
        end

        it "A1 - C1 returns true" do
            expect(@rook.valid_move?('A1C1', @board)).to eq(false)
        end

        it "A1 - C3 Returns false" do
            expect(@rook.valid_move?('A1C3', @board)).to eq(false)

        end
    end


end


describe Bishop do
    describe "#possible_move?" do
        before :each do 
             @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
        end

        it "H3-F5 Bishop" do
            puts Bishop.possible_move?('H3F5', @board)
            expect(Bishop.possible_move?('H3F5', @board)).to eq true
        end
        
        it 'A6-C4 Bishop' do
            expect(Bishop.possible_move?('A6C4', @board)).to eq true
        end

    end
end


describe Queen do
    describe "#possible_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
        end

        it "H3-F5 Queen" do
            expect(Queen.possible_move?('H3F5', @board)).to eq true 
        end
        
        it 'A6 - C4 Queen' do
            expect(Queen.possible_move?('A6C4', @board)).to eq true
        end

        it "A1 - C1 Queen" do
            expect(Queen.possible_move?('A1C1', @board)).to eq true 
        end

        it "A1 - C3 Queen" do
            expect(Queen.possible_move?('A1C3', @board)).to eq true 
        end
    end

end

describe King do
    describe "#possible_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns
        end

        it "H3-H3 King" do
            expect(King.possible_move?('H3H3', @board)).to eq true
        end
        
        it 'A6 - B5 King' do
            expect(King.possible_move?('A6B5', @board)).to eq true 
        end

        it "A1 - C1 King" do
            expect(King.possible_move?('A1C1', @board)).to eq false
        end

        it "A1 - A2 King" do
            expect(King.possible_move?('A1A2', @board)).to eq true 
        end
    end
end


describe Pawn do
    describe "#possible_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns
        end

        it "H3-H3 Pawn" do
            expect(Pawn.possible_move?('H3H3', @board)).to eq true
        end
        
        it 'A6 - B5 Pawn' do
            expect(Pawn.possible_move?('A6B5', @board)).to eq true
        end

        it "A1 - C1 Pawn" do
            expect(Pawn.possible_move?('A1C1', @board)).to eq false
        end

        it "A1 - A2 Pawn" do
            expect(Pawn.possible_move?('A1A2', @board)).to eq false 
        end
    end
end


describe Knight do
    describe "#possible_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
        end

        #all of these tests start at E4
        it "Top Top Right at E4: 'E4C5'" do
            expect(Knight.possible_move?('E4C5', @board)).to eq true
        end
        
        it "Top Right at E4 'E4D6'" do
            expect(Knight.possible_move?('E4D6', @board)).to eq true
        end

        it "Bottom Right at E4 'E4F6'" do
            expect(Knight.possible_move?('E4F6', @board)).to eq true
        end

        it "Bottom Bottom Right at E4 'E4G5'" do
            expect(Knight.possible_move?('E4G5', @board)).to eq true
        end
        
        it "Bottom Bottom Left at E4: 'E4G3'" do
            expect(Knight.possible_move?('E4G3', @board)).to eq true
        end
        
        it "Bottom Left at E4 'E4F2'" do
            expect(Knight.possible_move?('E4F2', @board)).to eq true
        end

        it "Top Left at E4 'E4D2'" do
            expect(Knight.possible_move?('E4D2', @board)).to eq true
        end

        it "Top Top Left at E4 'E4C3'" do
            expect(Knight.possible_move?('E4C3<D-P>', @board)).to eq true
        end

    end
end






