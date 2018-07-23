require './player'
require './questions'
require './turn'

p1 = Player.new('Player1', 3)

p2 = Player.new('Player2', 3)

currTurn = p1

while p1.lives > 0 && p2.lives > 0 do
  new_turn = Turn.new(p1, p2, @questions, currTurn)

  new_turn.newTurn()

  if currTurn == p1
    currTurn = p2
  else
    currTurn = p1
  end

end

puts "----- GAME OVER -----"
puts ""

if p1.lives == 0
  puts "#{p2.name} wins with a score of #{p2.lives}/3"
else
  puts "#{p1.name} wins with a score of #{p1.lives}/3"
end

puts ""

puts "Good bye!"

puts ""