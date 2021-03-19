require 'Towers of Hanoi.rb'

describe TowersofHanoi do
    subject(:tower) { TowersofHanoi.new }


    describe "::populate" do
        it "should populate the game with first array's length == 3" do
            expect(TowersofHanoi.populate[0].length).to eq(3)
        end 


    end 

    describe "#initialize" do 
        it "should return a 2D Array with a length of 3" do
            expect(tower.grid.length).to eq(3)
        end 
    end 

    describe "#move" do
        it "prompts the user for a position" do
            expect(tower.moves).to eq([[2,1,0],[0],[]])
        end
    end
    # it "receives a start and end postion" do
    #     expect(tower.moves).to receive(,)
    # end

    # call on instance of TOH
    # should expect 2 positions (arrays)
    # input from user for start / end pos (arrays) & convert to integer/ array
    # pop from starting position and push to end position if valid_pos 


    # raise error if arr.last < arr[start_pos].last
    


    describe "#won?" do

        context "when the last array is the same as first" do 
            let(:winning_tower) do 
                object = TowersofHanoi.new
                object.grid[2] = [2,1,0]
                object
            end

            it "returns true" do
                expect(winning_tower.won?).to be true
            end 
        end

        it "returns false otherwise" do

            expect(tower.won?).to be false
        end 
    end 

end 


