require 'spec_helper'

describe CodeBreakerSimulator do
  describe "evaluate_guess" do
    it "reports that the match was correct" do
      subject.evaluate_guess(:red, :green, :blue, :pink).should == { color: 4, place: 4 }
    end

    it "evalutes colors that are in the reverse order" do
      subject.evaluate_guess(:pink, :blue, :green, :red).should == { color: 4, place: 0 }
    end
  end
end
