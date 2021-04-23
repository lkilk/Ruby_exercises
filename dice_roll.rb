player_1_score = 0
player_2_score = 0

def throw
  return rand(1..6) + rand(1..6)
end

while true do

  if throw > 6
    player_1_score = player_1_score + 1
  else
    player_2_score = player_2_score + 1
  end

  if player_1_score || player_2_score == 2
    break
  end

end

puts player_1_score 
