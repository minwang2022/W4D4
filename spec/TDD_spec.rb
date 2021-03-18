require 'rspec'
require "TDD"

#it should return a new array
#it should not have any duplicate
#it should not call .uniq method

describe "my_uniq" do 
  
    it "should return a new array" do
        arr = [1, 2, 3, 2, 4]
        expect(my_uniq(arr)).to_not be(arr)
    end

    it "should not have any duplicate" do
        arr = [1, 2, 3, 2, 4]
        new_arr = arr.uniq
        expect(my_uniq(arr)).to eq(new_arr)
    end

    it "should not call .uniq method" do
        arr = [1, 2, 3, 2, 4]
        expect(my_uniq(arr)).to_not receive(:uniq)
    end 

    it "accepting an array as an arg" do
        expect { my_uniq([1, 2, 3, 2, 4]) }.to_not raise_error
    end
end

describe Array do
        # [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
        # there are no matches, return empty array
    describe "to_sum" do
        it "find matching 0 sum pair indices" do 
            arr = [-1, 0, 2, -2, 1]
            expect(arr.to_sum).to eq([[0, 4], [2, 3]])
        end

        it "there are no matches, should return empty array" do 
            arr = [1, 1, 0]
            expect(arr.to_sum).to eq([])
        end

    end


end




