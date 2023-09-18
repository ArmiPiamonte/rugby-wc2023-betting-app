p 'destroying teams'

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

# --------------------- Matches -----------------------------------------------

p 'creating matches'

match_date = Date.new(2023, 9, 8)
france = Team.find_by(country: 'France')
new_zealand = Team.find_by(country: 'New Zealand')
Match.create!(
  winner: france,
  loser: new_zealand,
  date: match_date.strftime('%A, %d %B %Y'),
  pool: 'A'
)

p 'done'
