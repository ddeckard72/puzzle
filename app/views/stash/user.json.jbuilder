json.puzzles @puzzle do |puzzle|
  json.image  puzzle.image
  json.title  puzzle.title
  json.level  puzzle.level
  json.author puzzle.user.username
  json.id     puzzle.id
  json.message "poop"
end
