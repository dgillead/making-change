require 'pry'

def find_change_combinations(amount, coins)
  combinations = []
  combinations.push(current_combination(amount, coins))
  p combinations
end

def current_combination(amount, coins)
  possible_combination = []
  confirmed_combination = []
  counter = 0
  # binding.pry
  coins.each_with_index do |coin, index|
    possible_combination.push(coin)
    # binding.pry
    while possible_combination.sum <= amount
      possible_combination.push(coins[index + counter])
      # binding.pry
      if possible_combination.sum == amount
        confirmed_combination.push(possible_combination)
        counter += 1
        possible_combination.clear
        # binding.pry
      end
    end
  end
  confirmed_combination
end

find_change_combinations(4, [1, 2, 3])
