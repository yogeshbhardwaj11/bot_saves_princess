# Bot Saves Princess

1. **https://www.hackerrank.com/challenges/saveprincess** - Princess Peach is trapped in one of the four corners of a square grid. You are in the center of the grid and can move one step at a time in any of the four directions. Can you rescue the princess?

The first line contains an odd integer N (3 <= N < 100) denoting the size of the grid. This is followed by an NxN grid. Each cell is denoted by ‘-‘ (ascii value: 45). The bot position is denoted by ‘m‘ and the princess position is denoted by ‘p‘.

2. **https://www.hackerrank.com/challenges/saveprincess2** - In this version of "Bot saves princess", Princess Peach and bot‘s position are randomly set. Can you save the princess?

Complete the function nextMove which takes in 4 parameters - an integer N, integers r and c indicating the row & column position of the bot and the character array grid - and outputs the next move the bot makes to rescue the princess.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes


### Installing

A step by step series of examples that tell you have to get a development env running

1. Clone / Download the code.
2. You may change gemset in .ruby-gemset if you want.
3. Code is tested in ruby version 2.5.0. It may work in other versions as well. You can change, ruby version in .ruby-version file.
4. Open terminal and cd in root directory.
5. It will create gemset and will ask to install rvm version, if already not installed.
6. Install bundler and gems:

```
gem install bundler
bundle install
```

## Running the tests

Please run command:

```
rspec spec/bot_saves_princess_spec.rb
rspec spec/bot_saves_princess2_spec.rb
```
### Break down into end to end tests

There are 2 rspec files to test code of 2 classes.

***Bot Saves Princess*** - bot_saves_princess_spec.rb file test code for method display_path in BotSavesPrincess class in lib/bot_saves_princess.rb file.
To test with more test cases, you can change params in bot_saves_princess_spec.rb with expected output.


***Bot Saves Princess 2*** - bot_saves_princess2_spec.rb file test code for method display_path in BotSavesPrincess2 class in lib/bot_saves_princess2.rb file.
To test with more test cases, you can change params in bot_saves_princess_test.rb with expected output.
params are passed as mentioned in requirement.

## Running the Puzzle

Please run command:

```
ruby lib/puzzle1.rb
ruby lib/puzzle2.rb
```
and give the expected input as specified in the puzzles description.we will get the expected output.