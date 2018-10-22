class Team

attr_reader :name, :players, :points
attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player_name)
    @players << new_player_name
  end

  def check_player(player_name)
    @players.include? player_name
  end

  def result (game_result)
    win = 3
    draw = 1
    loss = 0
    @points += win if game_result == "win"
    @points += draw if game_result =="draw"
    @points += loss if game_result =="loss"
  end

end
