class Turn

  def initialize(p1, p2, question, currTurn)
    @p1 = p1
    @p2 = p2
    @question = question
    @currTurn = currTurn
  end

  def newTurn
    puts "----- NEW TURN -----"
    puts ""
    puts "Player this turn: #{@currTurn.name}"
    puts ""

    if @currTurn == @p1
      @p1.question(@question)
    else
      @p2.question(@question)
    end
    puts ""
    puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
    puts ""
  end

end