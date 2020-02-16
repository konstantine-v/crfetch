require "./spec_helper"

describe Fetch do
  it "Gets OS" do
    (Fetch::OS.new).should_not be_nil
    (Fetch::OS.new).should_not eq("error")
  end
  it "Gets CPU info" do
    (Fetch::CPU.new("Darwin/n")).should_not be_nil
  end

  # it "Gets CPU Type" do
  # (CrFetch::GetCPU.new).should_not be_nil
  # (CrFetch::GetCPU.new).should_not "error"
  # end
end
