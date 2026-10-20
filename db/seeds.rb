movies = [
  { title: "My Neighbor Totoro", rating: "G", release_date: "1988-04-16" },
  { title: "Green Book", rating: "PG-13", release_date: "2018-11-16" },
  { title: "Parasite", rating: "R", release_date: "2019-05-30" },
  { title: "Nomadland", rating: "R", release_date: "2021-02-19" },
  { title: "CODA", rating: "PG-13", release_date: "2021-08-13" },
  { title: "Spirited Away", rating: "PG", release_date: "2001-07-20" },
  { title: "The Truman Show", rating: "PG", release_date: "1998-06-05" },
  { title: "Everything Everywhere All at Once", rating: "R", release_date: "2022-03-25" }
]

movies.each do |attributes|
  movie = Movie.find_or_initialize_by(title: attributes[:title])
  movie.assign_attributes(attributes)
  movie.save!
end
