nitially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.

The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.

Example 1:
Input: "UD"
Output: true
Example 2:
Input: "LL"
Output: false

def judge_circle(moves)
  if moves.nil?
    return false
  end

  hor_balance = 0
  ver_balance = 0
  moves.chars.each do |move|
    case move
    when "R"
      hor_balance += 1
    when "L"
      hor_balance -= 1
    when "U"
      ver_balance += 1
    when "D"
      ver_balance -= 1
    end
  end

  if hor_balance == 0 && ver_balance == 0
    return true
  else
    return false
  end
end
