require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ISO4217::Currency do

  context "creation" do

    before(:each) do
      @currency = ISO4217::Currency.new(:EUR, 'U+20ac', 'euro')
    end

    it "has a code assigned to it" do
      @currency.code.should == :EUR
    end

    it "has a sign" do
      @currency.sign.should == '€'
    end

    it "has a name" do
      @currency.name.should == 'euro'
    end
  end
end
