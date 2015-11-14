json.puzzles @puzzles do |puzzle|
  json.about puzzle.about
  json.image puzzle.image
  json.user_id puzzle.user_id
  json.username puzzle.user.username
end