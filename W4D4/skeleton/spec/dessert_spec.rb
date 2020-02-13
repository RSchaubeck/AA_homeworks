require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("cookie", 20, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cookie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "23", chef) }.to raise_error ArgumentError
    end
  end

  describe "#add_ingredient" do
    before(:each) do
      dessert.add_ingredient("flour")
      dessert.add_ingredient("sugar")
    end
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to eq(["flour", "sugar"])
    end
  end

  describe "#mix!" do
  before(:each) do
    dessert.add_ingredient("flour")
    dessert.add_ingredient("sugar")
    dessert.add_ingredient("water")
    dessert.add_ingredient("eggs")
    dessert.mix!
  end
    it "shuffles the ingredient array" do
      expect(dessert.ingredients.length).to eq(4)
      expect(dessert.ingredients).to_not eq(["flour", "sugar", "water", "eggs"])
    end
  end

  describe "#eat" do
    before(:each) do
      dessert.eat(5)
    end
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
    
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
    
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    
    end
  end
end
