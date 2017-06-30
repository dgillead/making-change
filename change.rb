def find_change_combinations(amount, coins)
  combinations = []
  coins.each do |coin|
    combinations.push(current_combination(amount, coin))
  end
  p combinations
end

def current_combination(amount, coin)
  possible_combination = []
  while possible_combination.sum < amount
    possible_combination.push(coin)
    if possible_combination.sum == amount
      return possible_combination
    end
  end
end

find_change_combinations(4, [1, 2, 3])
