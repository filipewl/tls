module SmallestGoalsDifference
  class Finder
    attr_reader :smallest_difference, :team, :for, :against

    def initialize
      @smallest_difference = Float::INFINITY
      @for = 0
      @against = 0
      @team = nil
    end

    def find(data = nil)
      data ||= yield.to_a

      data.each do |team, for_goals, against_goals|
        difference = (for_goals - against_goals).abs

        if difference < @smallest_difference
          @smallest_difference = difference
          @team = team
          @for = for_goals
          @against = against_goals
        end
      end

      @team
    end
  end
end
