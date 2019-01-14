require 'foodie_david'

RSpec.describe FoodieDavid::Food do
  it "Broccoli is gross" do
    expect(FoodieDavid::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(FoodieDavid::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(FoodieDavid::Food.pluralize("Tomato")).to eql("Tomatoes")
  end
end
