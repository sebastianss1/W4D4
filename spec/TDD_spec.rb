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

describe "#my_transpose" do 
    subject(:arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
    let(:arr1) {
    [[0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]]}
    it "transposes a square 2D array and returns a new array where row are converted to columns" do
        expect(my_transpose(arr)).to eq(arr1)
    end

    it "does not call .transpose method" do
        expect(arr).to_not receive(:transpose)
        my_transpose(arr)
    end
end

describe "#stock_picker"  do
    subject(:arr) {[4.00, 5.25, 3.50, 6.60, 2.20]}

    it "returns the most profitable pair of days" do
         expect(stock_picker(arr)).to eq([3,4])
    end
end

