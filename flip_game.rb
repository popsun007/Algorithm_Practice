def generate_possible_next_moves(s)
  result = []

  for i in 0...s.size - 1
    if s[i..i + 1] == '++' && i + 2 < s.size
      result << s[0...i] + '--' + s[i + 2..s.size]
    end
  end

  result
end
