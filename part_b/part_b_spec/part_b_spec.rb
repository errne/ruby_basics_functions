require("minitest/autorun")
require("minitest/rg")
require_relative("../part_b")

class TestPart_B < MiniTest::Test

  def test_team_name
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    assert_equal("Strings", team1.name)
  end

  def test_get_players
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    assert_equal(["Ernest", "Chris"], team1.players)
  end

  def test_get_coach
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    assert_equal("Borna", team1.coach)
  end

  def test_change_coach_name
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")

    assert_equal("Ray", team1.coach = "Ray")
  end

  def test_add_new_player
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    team1.add_new_player("Steven")
    assert_equal(["Ernest", "Chris", "Steven"], team1.players)
  end

  def test_player_in_array
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    check = team1.check_player("Ernest")
    assert_equal(true, check)
  end

  def test_player_in_array__not_found
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    check = team1.check_player("Dr Ernest")
    assert_equal(false, check)
  end

  def test_get_points
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    assert_equal(0, team1.points)
  end

  def test_team_points__win
    players = ["Ernest", "Chris"]
    team1 = Team.new("Strings", players, "Borna")
    team1.result("win")
    assert_equal(3, team1.points)
  end

  def test_team_points__draw
    players = ["Ernest", "Chris"]
    team2 = Team.new("Strings", players, "Borna")
    team2.result("draw")
    assert_equal(1, team2.points)
  end

  def test_team_points__loss
    players = ["Ernest", "Chris"]
    team3 = Team.new("Strings", players, "Borna")
    team3.result("loss")
    assert_equal(0, team3.points)
  end

end
