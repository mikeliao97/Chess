require "spec_helper"

#What should I really test for?
#That it returns balck
#
describe Rook do
    before :each do 
            @rook = Rook.new(color: :black)
    end


    describe "#valid_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns

        end

        it "A1 - C1 returns true" do
            expect(Rook.valid_move?('A1C1', @board)).to eq(true)
        end

        it "A1 - C3 Returns false" do
            expect(Rook.valid_move?('A1C3', @board)).to eq(false)

        end


    end
end


describe Bishop do
    describe "#valid_move?" do
        before :each do 
             @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns


        end

        it "H3-F5 Bishop" do
            puts Bishop.valid_move?('H3F5', @board)
            expect(Bishop.valid_move?('H3F5', @board)).to eq true
        end
        
        it 'A6-C4 Bishop' do
            expect(Bishop.valid_move?('A6C4', @board)).to eq true
        end

    end
end


describe Queen do
    describe "#valid_move?" do
        before :each do 
              @player1 = Player.new(name: "Johnny", color: :white)
              @player2 = Player.new(name: "Patrick", color: :black)
              @board = Board.new(@player1, @player2)
              @board.remove_pawns

        end

        it "H3-F5 Queen" do
            expect(Queen.valid_move?('H3F5', @board)).to eq true 
        end
        
        it 'A6 - C4 Queen' do
            expect(Queen.valid_move?('A6C4', @board)).to eq true
        end

        it "A1 - C1 Queen" do
            expect(Queen.valid_move?('A1C1', @board)).to eq true 
        end

        it "A1 - C3 Queen" do
            expect(Queen.valid_move?('A1C3', @board)).to eq true 
        end
    end

    describe "#valid_move?" do
            context "pawns are removed" do
                    before :all do
                        @player1 = Player.new(name: "Johnny", color: :white)
                        @player2 = Player.new(name: "Patrick", color: :black)
                        @board = Board.new(@player1, @player2)
                    end

                    
                     it "H3-F5 Queen with pawns" do
                       expect(Queen.valid_move?('H3F5', @board)).to eq false
                        end
        
                     it 'A6 - C4 Queen with pawns ' do        
                        expect(Queen.valid_move?('A6C4', @board)).to eq false 
                      end

                      it "A1 - C1 Queen with pawns" do

                        expect(Queen.valid_move?('A1C1', @board)).to eq false 
                      end

                      it "A1 - C3 Queen with pawns" do

                         expect(Queen.valid_move?('A1C3', @board)).to eq false 
                    end
        
            end
                


    end


    
end

