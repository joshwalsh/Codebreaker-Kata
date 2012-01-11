require 'spec_helper'

describe CodeBreakerSimulator do
  describe "evaluate_guess" do
    it "RGBP returns color 4, place 4" do
      subject.evaluate_guess(:red, :green, :blue, :pink).should == { color: 4, place: 4 }
    end

    it "PBGR returns color 4, place 0" do
      subject.evaluate_guess(:pink, :blue, :green, :red).should == { color: 4, place: 0 }
    end

    it "YVOC returns color 0, place 0" do
      subject.evaluate_guess(:yellow, :violet, :orange, :chartreuse).should == { color: 0, place: 0 }
    end
  end
end
