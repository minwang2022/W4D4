require 'rspec'
require "TDD"

#it should return a new array
#it should not have any duplicate
#it should not call .uniq method

describe "my_uniq" do 
  
    it "should return a new array" do
        arr = [1, 2, 3, 2, 4]
        expect (my_uniq(arr).object_id).to_not eq(arr.object_id)
    end

    it "should not have any duplicate" do
        arr = [1, 2, 3, 2, 4]
        new_arr = arr.uniq
        expect (my_uniq(arr)).to eq(new_arr)
    end

    it "should not call .uniq method" do
        arr = [1, 2, 3, 2, 4]
        expect (my_uniq(arr)).to_not receive(:uniq)
    end 
end


