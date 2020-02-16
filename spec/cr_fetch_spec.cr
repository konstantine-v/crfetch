require "./spec_helper"

describe CrFetch do
  it "Gets OS" do
    (CrFetch::GetOS.new).should_not be_nil
    (CrFetch::GetOS.new).should_not eq("error")
  end

  # it "Gets CPU Type" do
  # (CrFetch::GetCPU.new).should_not be_nil
  # (CrFetch::GetCPU.new).should_not "error"
  # end
end
