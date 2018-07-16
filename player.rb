class Player
  attr_accessor :name
  attr_accessor :lives
  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def correctAnswer()
    puts "#{name}: YES! You are correct!"
  end

  def wrongAnswer()
    puts "#{name}: Seriously?! NO!"
    @lives = @lives - 1
  end

  def question(questions)
    r = Random.new
    qIndex = r.rand(1...20)
    puts questions[qIndex][:question]
    answer = gets.chomp

    if answer == questions[qIndex][:answer]
      correctAnswer()
    else
      wrongAnswer()
    end
  end


end