p 'destroying teams'

Result.destroy_all
Match.destroy_all
Team.destroy_all

p 'clean slate'

p 'creating teams'

Team.create!(
  country: 'Ireland',
  flag: 'https://flagcdn.com/ie.svg',
  ranking: 1
)

Team.create!(
  country: 'South Africa',
  flag: 'https://flagcdn.com/za.svg',
  ranking: 2
)

Team.create!(
  country: 'France',
  flag: 'https://flagcdn.com/fr.svg',
  ranking: 3
)

Team.create!(
  country: 'New Zealand',
  flag: 'https://flagcdn.com/nz.svg',
  ranking: 4
)

Team.create!(
  country: 'Scotland',
  flag: 'https://flagcdn.com/gb-sct.svg',
  ranking: 5
)

Team.create!(
  country: 'England',
  flag: 'https://flagcdn.com/gb-eng.svg',
  ranking: 6
)

Team.create!(
  country: 'Wales',
  flag: 'https://flagcdn.com/gb-wls.svg',
  ranking: 7
)

Team.create!(
  country: 'Fiji',
  flag: 'https://flagcdn.com/fj.svg',
  ranking: 8
)

Team.create!(
  country: 'Australia',
  flag: 'https://flagcdn.com/au.svg',
  ranking: 9
)

Team.create!(
  country: 'Argentina',
  flag: 'https://flagcdn.com/ar.svg',
  ranking: 10
)

Team.create!(
  country: 'Samoa',
  flag: 'https://flagcdn.com/ws.svg',
  ranking: 11
)

Team.create!(
  country: 'Italy',
  flag: 'https://flagcdn.com/it.svg',
  ranking: 12
)

Team.create!(
  country: 'Georgia',
  flag: 'https://flagcdn.com/ge.svg',
  ranking: 13
)

Team.create!(
  country: 'Japan',
  flag: 'https://flagcdn.com/jp.svg',
  ranking: 14
)

Team.create!(
  country: 'Tonga',
  flag: 'https://flagcdn.com/to.svg',
  ranking: 15
)

Team.create!(
  country: 'Portugal',
  flag: 'https://flagcdn.com/pt.svg',
  ranking: 16
)

Team.create!(
  country: 'Uruguay',
  flag: 'https://flagcdn.com/uy.svg',
  ranking: 17
)

Team.create!(
  country: 'Romania',
  flag: 'https://flagcdn.com/ro.svg',
  ranking: 19
)

Team.create!(
  country: 'Namibia',
  flag: 'https://flagcdn.com/na.svg',
  ranking: 21
)

Team.create!(
  country: 'Chile',
  flag: 'https://flagcdn.com/cl.svg',
  ranking: 22
)

p ' Teams done'

# --------------------- MATCHES & RESULT  --------------------------------------

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 8)
# ------------------------------------------------------------------------------

team_1 = Team.find_by(country: 'France')
team_2 = Team.find_by(country: 'New Zealand')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 27,
  losing_score: 13
)
p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 9)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Italy')
team_2 = Team.find_by(country: 'Namibia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 52,
  losing_score: 8
)


team_1 = Team.find_by(country: 'Ireland')
team_2 = Team.find_by(country: 'Romania')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 82,
  losing_score: 8
)

team_1 = Team.find_by(country: 'Australia')
team_2 = Team.find_by(country: 'Georgia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 35,
  losing_score: 15
)

team_1 = Team.find_by(country: 'England')
team_2 = Team.find_by(country: 'Argentina')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 27,
  losing_score: 10
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 10)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Japan')
team_2 = Team.find_by(country: 'Chile')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 42,
  losing_score: 12
)

team_1 = Team.find_by(country: 'South Africa')
team_2 = Team.find_by(country: 'Scotland')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 18,
  losing_score: 3
)

team_1 = Team.find_by(country: 'Wales')
team_2 = Team.find_by(country: 'Fiji')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 32,
  losing_score: 26
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 14)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'France')
team_2 = Team.find_by(country: 'Uruguay')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 27,
  losing_score: 12
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 15)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'New Zealand')
team_2 = Team.find_by(country: 'Namibia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 71,
  losing_score: 3
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 16)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Samoa')
team_2 = Team.find_by(country: 'Chile')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 43,
  losing_score: 10
)

team_1 = Team.find_by(country: 'Wales')
team_2 = Team.find_by(country: 'Portugal')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 28,
  losing_score: 8
)

team_1 = Team.find_by(country: 'Ireland')
team_2 = Team.find_by(country: 'Tonga')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 59,
  losing_score: 16
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 17)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'South Africa')
team_2 = Team.find_by(country: 'Romania')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 76,
  losing_score: 0
)

team_1 = Team.find_by(country: 'Australia')
team_2 = Team.find_by(country: 'Fiji')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)
Result.create!(
  match: match,
  winner: team_2,
  loser: team_1,
  winning_score: 22,
  losing_score: 15
)

team_1 = Team.find_by(country: 'England')
team_2 = Team.find_by(country: 'Japan')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)
Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 34,
  losing_score: 12
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 20)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Italy')
team_2 = Team.find_by(country: 'Uruguay')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 38,
  losing_score: 17
)
p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 21)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'France')
team_2 = Team.find_by(country: 'Namibia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 96,
  losing_score: 0
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 22)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Argentina')
team_2 = Team.find_by(country: 'Samoa')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 19,
  losing_score: 10
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 23)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Georgia')
team_2 = Team.find_by(country: 'Portugal')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 18,
  losing_score: 18
)

team_1 = Team.find_by(country: 'England')
team_2 = Team.find_by(country: 'Chile')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 71,
  losing_score: 0
)

team_1 = Team.find_by(country: 'South Africa')
team_2 = Team.find_by(country: 'Ireland')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

Result.create!(
  match: match,
  winner: team_2,
  loser: team_1,
  winning_score: 8,
  losing_score: 13
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 24)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Scotland')
team_2 = Team.find_by(country: 'Tonga')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 45,
  losing_score: 17
)

team_1 = Team.find_by(country: 'Wales')
team_2 = Team.find_by(country: 'Australia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 40,
  losing_score: 6
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 27)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Uruguay')
team_2 = Team.find_by(country: 'Namibia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 36,
  losing_score: 26
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 28)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Japan')
team_2 = Team.find_by(country: 'Samoa')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 28,
  losing_score: 22
)
p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 29)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'New Zealand')
team_2 = Team.find_by(country: 'Italy')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 96,
  losing_score: 17
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 9, 30)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Argentina')
team_2 = Team.find_by(country: 'Chile')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 59,
  losing_score: 5
)

team_1 = Team.find_by(country: 'Fiji')
team_2 = Team.find_by(country: 'Georgia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 17,
  losing_score: 12
)

team_1 = Team.find_by(country: 'Scotland')
team_2 = Team.find_by(country: 'Romania')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 84,
  losing_score: 0
)
p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 10, 1)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Australia')
team_2 = Team.find_by(country: 'Portugal')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 34,
  losing_score: 14
)

team_1 = Team.find_by(country: 'South Africa')
team_2 = Team.find_by(country: 'Tonga')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

Result.create!(
  match: match,
  winner: team_1,
  loser: team_2,
  winning_score: 49,
  losing_score: 18
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 10, 5)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'New Zealand')
team_2 = Team.find_by(country: 'Uruguay')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 10, 6)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'France')
team_2 = Team.find_by(country: 'Italy')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'A'
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 10, 7)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Wales')
team_2 = Team.find_by(country: 'Georgia')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

team_1 = Team.find_by(country: 'England')
team_2 = Team.find_by(country: 'Samoa')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

team_1 = Team.find_by(country: 'Ireland')
team_2 = Team.find_by(country: 'Scotland')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

p "#{date} matches done"

# ------------------------------------------------------------------------------
date = Date.new(2023, 10, 8)
# ------------------------------------------------------------------------------
team_1 = Team.find_by(country: 'Japan')
team_2 = Team.find_by(country: 'Argentina')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'D'
)

team_1 = Team.find_by(country: 'Tonga')
team_2 = Team.find_by(country: 'Romania')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'B'
)

team_1 = Team.find_by(country: 'Fiji')
team_2 = Team.find_by(country: 'Portugal')
match = Match.create!(
  team_1: team_1,
  team_2: team_2,
  date: date,
  pool: 'C'
)

p "#{date} matches done"
