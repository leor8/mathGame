require './player'
require './questions'

p1 = Player.new('Player1', 3)

p2 = Player.new('Player2', 3)

currTurn = p1

while p1.lives > 0 && p2.lives > 0 do
  puts "----- NEW TURN -----"
  puts ""
  puts "Player this turn: #{currTurn.name}"
  puts ""
  if currTurn == p1
    p1.question(@questions)
    currTurn = p2
  else
    p2.question(@questions)
    currTurn = p1
  end
  puts ""
  puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
  puts ""
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