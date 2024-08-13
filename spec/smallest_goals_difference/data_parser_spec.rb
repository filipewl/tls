require "rspec"

require_relative "../../lib/smallest_goals_difference/data_parser"

RSpec.describe SmallestGoalsDifference::DataParser do
  it "parses a .dat file and yields the day, max temperature, and minimum temperature data" do
    file_content = <<~DATA

    <pre>
    Team            P     W    L   D    F      A     Pts
 1. Arsenal         38    26   9   3    79  -  36    87
 2. Liverpool       38    24   8   6    67  -  30    80
 </pre>

 DATA

    io = StringIO.new(file_content)
    parser = SmallestGoalsDifference::DataParser.new(io)
    rows = parser.parse.to_a

    expect(rows).to eq([
      ["Arsenal", 79, 36],
      ["Liverpool", 67, 30]
    ])
  end
end
