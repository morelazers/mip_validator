RSpec.describe MipValidator do
  it "has a version number" do
    expect(MipValidator::VERSION).not_to be nil
  end

  it "raises exception if it includes invalid mips" do
    expect{
      MipValidator::Runner.run Dir["spec/fixtures/valid/*md"]
    }.not_to raise_error
  end

  RSpec::Expectations.configuration.on_potential_false_positives = :nothing
  it "raises exception if it includes invalid mips" do
    expect{
      MipValidator::Runner.run Dir["spec/fixtures/invalid/*md"]
    }.to raise_error
  end
end
