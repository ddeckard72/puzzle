json.puzzles @puzzles do |puzzle|
  json.about puzzle.about
  json.image puzzle.image
  json.user_id puzzle.user.id
  json.username puzzle.user.username
end