require 'spec_helper'

RSpec.describe "MipValidator::Loader"  do
  let(:status) { 'Implemented' }
  let(:mip){
    {
      "mip" => 1,
      "title" => 'MIP Validation Tester',
      "author" => 'Tom Nash, Nom Tash',
      "status" => status,
      "created" => Date.parse('2020-09-15')
    }
  }
  let(:file_name) {
   'spec/fixtures/valid/mip-1.md'
  }

  subject(:loader){ MipValidator::Loader.load(file_name)}

  describe "valid" do
    it "should have required fields" do
      expect(loader).to eq(mip)
    end
  end
end