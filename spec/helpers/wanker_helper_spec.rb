require 'spec_helper'

describe WankerHelper do
  describe "wankify" do
    it "wankifies text case-matchingly" do
      source = 'hack'
      dest = 'wank'
      plaintext = 'HACK Hack hack'
      helper.wankify(source, dest, plaintext).should == 'WANK Wank wank'
    end
  end
end
