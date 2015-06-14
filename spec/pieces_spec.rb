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


    
    
    
end
