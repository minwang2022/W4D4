require 'rspec'
require "towers"

describe "Towers" do
    subject(:towers) {Towers.new}
    describe "#initialize" do
        it "should have variable stack set to a 2-d array" do
            expect(towers.stack).to eq([[1,2,3],[],[]])
        end                 
    end

    describe "#move" do 
        
        it "can move to empty stack" do
            towers.move(0, 1)
            expect(towers.stacks).to eq([[2,3],[1],[]])  
        end 

        it "cannot pile a larger piece on the smaller piece" do
            towers.move(0, 1)
            expect(towers.move(0, 1)).to raise_error
        end

        it "cannot move piece when the stack is empty" do
            expect(towers.move(2,0)).to raise_error
        end 
    end

end