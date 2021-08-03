require 'spec_helper'

describe Blather do

  describe "while accessing to Logger object" do
    it "should return a Logger instance" do
      expect(Blather.logger).to be_instance_of Logger
    end
  end

end
