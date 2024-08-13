RSpec.describe "Smallest difference CLI" do
  it "prints the Team with the smallest difference in for and against goals" do
    sample_file = "data/soccerr.dat"
    output = `bin/smallest_goals_difference #{sample_file}`

    expect(output).to include("Team with the smallest difference in for and against goals: Aston_Villa")
    expect(output).to include("Smallest difference: 1 (For 46 - Against 47")
  end

  it "prints an error message if no file path is provided" do
    output = `bin/smallest_goals_difference`

    expect(output).to include("Usage: smallest_goals_difference <file_path>")
  end

  it "prints an error message if the file does not exist" do
    output = `bin/smallest_goals_difference data/non_existent.dat`

    expect(output).to include("File not found")
  end
end
