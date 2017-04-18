define_method(:scrabble_score) do
  scrabble_hash = {"a"=> 1, "e"=> 1, "i"=> 1, "o"=> 1, "u"=> 1, "l"=> 1, "n"=> 1, "r"=> 1, "s"=> 1, "t"=> 1, "d"=> 2, "g"=> 2, "b"=> 3, "c"=> 3, "m"=> 3, "p"=> 3, "f"=> 4, "h"=> 4, "v"=> 4, "w"=> 4, "y"=> 4, "k"=> 5, "j"=> 8, "x"=> 8, "q"=> 10, "z"=> 10}
  # scrabble_hash.fetch(self)

  score_array = []
  array = self.split(//)
  array.each() do |letter|
    tmpHoldScore = scrabble_hash.fetch(letter)
    score_array.push(tmpHoldScore)
  end
  sum = 0
  score_array.each()do |score|
    sum = sum.+(score)
  end
  return sum
end
