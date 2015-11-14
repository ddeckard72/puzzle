json.games @games do |game|
  json.username game.user.username
  json.puzzle game.puzzle.about
  json.time game.time

end