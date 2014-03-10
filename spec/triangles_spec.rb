require "triangles"
require "rspec"

describe Triangle do
  it "initializes a new triangle with weight" do
    new_triangle = Triangle.new(6,3,4)
    new_triangle.should be_an_instance_of Triangle
  end
  it "rejects a non-triangle triangle" do
    new_triangle = Triangle.new(6, 5, 6)
    new_triangle.valid.should eq true
  end
  it "accepts a triangle" do
    new_triangle = Triangle.new(3, 4, 5)
    new_triangle.valid.should eq true
  end
  it "returns type of triangle" do
    new_triangle = Triangle.new(5, 5, 5)
    new_triangle.type.should eq "equilateral"
  end
  it "returns type of triangle" do
    new_triangle = Triangle.new(5, 5, 3)
    new_triangle.type.should eq "isosceles"
  end
  it "returns type of triangle" do
    new_triangle = Triangle.new(5, 4, 3)
    new_triangle.type.should eq "scalene"
  end
end
