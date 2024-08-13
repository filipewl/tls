module SmallestGoalsDifference
  class DataParser
    DATA_LINE_NUMBER = 3
    END_DELIMITER = "</pre>"
    TEAM_COLUMN_INDEX = 1
    GOALS_FOR_COLUMN_INDEX = 6
    GOALS_AGAINST_COLUMN_INDEX = 8

    def initialize(input)
      @input = input
    end

    def parse
      io = @input.is_a?(String) ? File.open(@input) : @input

      Enumerator.new do |yielder|
        io.each_line.with_index do |line, index|
          next if index < DATA_LINE_NUMBER

          columns = line.split
          team = columns[TEAM_COLUMN_INDEX]

          next if columns.empty? || columns.include?(END_DELIMITER) || team.nil?

          goals_for = columns[GOALS_FOR_COLUMN_INDEX].to_i
          goals_against = columns[GOALS_AGAINST_COLUMN_INDEX].to_i

          yielder << [team, goals_for, goals_against]
        end
      end
    end
  end
end
