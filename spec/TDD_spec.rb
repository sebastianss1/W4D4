require 'TDD'


describe "#my_uniq" do 
    subject(:arr) { [1, 2, 3, 4, 4, 5, 6, 6] }

    it "returns an array of unique elements" do
        expect(my_uniq(arr)).to eq([1,2,3,4,5,6])
    end 

    it "returns an error if you call .uniq" do
        expect(arr).to_not receive(:uniq)
        my_uniq(arr)
    end 
end 

describe "#two_sum" do
    it "returns a 2D array with pairs of indeces that equal to 0" do
        expect(two_sum([-1, 0 , 2, -2 ,1])).to eq([[0,4], [2,3]])
    end 

    it "should shovel in smaller elements first" do
        expect(two_sum([-1, 0 , 2, -2 ,1])).to_not eq([[2, 3], [0,4]])
    end 
end 

