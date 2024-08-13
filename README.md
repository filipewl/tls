# Smallest Goals Difference CLI

This CLI tool processes goals data from a `.dat` file and finds the Team with the smallest difference in for and against goals. 

## Usage

### Running the Script

You can run the script in two ways:

#### 1. Make the Script Executable

First, ensure the script is executable. You can make the script executable by running:

```sh
chmod +x bin/smallest_goals_difference
```

Then, you can execute the script directly from the terminal:

```sh
bin/smallest_goals_difference data/soccerr.dat
```

#### 2. Run with Ruby Directly

If you prefer not to change file permissions, you can run the script using the Ruby interpreter directly:

```sh
ruby bin/smallest_goals_difference data/soccerr.dat
```

## Running the tests

Install the dependencies with Bundler:

```sh
bundle install
```

Run the tests with RSpec:

```sh
bundle exec rspec
```
