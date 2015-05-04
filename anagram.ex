defmodule Anagram do
	def anagram(word1, word2) do
		computer = fn(word,map) -> Map.update(map, word, 1, &(&1+1)) end
		map1 = Enum.reduce(String.to_char_list(word1), Map.new, computer)
		map2 = Enum.reduce(String.to_char_list(word2), Map.new, computer)
		IO.inspect map1 == map2
	end
end

Anagram.anagram("smile","lesmi")