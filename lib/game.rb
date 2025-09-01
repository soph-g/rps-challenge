class Game

  attr_reader :weapons

  def initialize(player1, player2)
    @players = [player1, player2]
    @weapons = {  "Rock" => "Scissors",
                  "Paper" => "Rock",
                  "Scissors" => "Paper"}
  end

  def player1
    @player1 = @players.first
  end

  def player2
    @player2 = @players.last
  end


  def result
    if player1.weapon == player2.weapon
      "It's a draw"
    elsif @weapons[player1.weapon] == player2.weapon
      "#{@player1.name} wins!"
    else
      "#{@player2.name} wins!"
    end
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

end
