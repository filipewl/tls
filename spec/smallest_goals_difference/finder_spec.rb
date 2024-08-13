require "rspec"

require_relative "../../lib/smallest_goals_difference/finder"

RSpec.describe SmallestGoalsDifference::Finder do
  describe "#find" do
    xit "accepts an array with the data of days, max, min temperatures, and finds the day with smallest spread" do
      data = [
        ["Arsenal", 79, 36], # 79 - 36 = 43
        ["Liverpool", 67, 30] # 67 - 30 = 37
      ]

      finder = SmallestGoalsDifference::Finder.new
      finder.find(data)

      expect(finder.team).to eq("Liverpool")
      expect(finder.smallest_difference).to eq(37)
      expect(finder.for).to eq(67)
      expect(finder.against).to eq(30)
    end
  end
end
