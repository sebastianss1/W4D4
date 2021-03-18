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

    describe "#moves" do
    #call on instance of TOH
    #should expect 2 positions (arrays)
    #input from user for start / end pos (arrays) & convert to integer/ array
    #pop from starting position and push to end position if valid_pos 


    #raise error if arr.last < arr[start_pos].last
    end 

    describe "#valid_pos?" do


    end 


    describe "#won" do
        it "returns true if the last array equals to where the game started" do
            expect(tower.grid[2]).to eq([2, 1, 0])
        end 

        it "returns false otherwise" do
            expect(tower.grid[2]).to_not eq([0, 1, 2])
        end 
    end 

end 


