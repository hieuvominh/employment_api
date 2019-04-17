require 'rails_helper'



RSpec.describe Employee, type: :model do
  describe "Constructor" do
    before(:each) do
      Employee.new(0001, 'hieu 1','2017-03-14','2017-03-14')
      Employee.new(0002, 'hieu 2','2017-03-14','2017-03-14')
    end

    it "should create a new instance of class Person" do
      expect(@matt).to be_an_instance_of(Person)
    end

    it "should have a name" do
      expect(@matt.name).to_not be_nil
    end

    it "should default #language to 'English'" do
      expect(@matt.language).to eq("English")
    end
  end
end
