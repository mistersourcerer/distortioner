RSpec.describe Distortioner::Say do
  subject(:say) { described_class.new }

  describe "#hi" do
    it "says hi to specific people" do
      expect { say.hi to: "Ricardo" }.to output("Hi, Ricardo!\n").to_stdout
    end

    it "says hi to mr_sourcerer if no specific peolpe is given" do
      expect { say.hi }.to output([
        "I am politely saying hi on behalf of Ricardo Valeriano!",
        "  He sure hope you are having fun reading his book. 🙌\n",
      ].join("\n")).to_stdout
    end
  end
end
