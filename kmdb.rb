# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
# TODO!

# Generate models and tables, according to the domain model.
# TODO! check

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
#Insert one row of studios
Warner = Studio.new
Warner["name"] = "Warner Bros"
Warner.save

#Insert three row of Movies
Bat1 = Movie.new
Bat1["title"] = "Batman Begins"
Bat1["year_released"] = "2005"
Bat1["rated"] = "PG-13"
Bat1["studio_id"] = Warner["id"]
Bat1.save

Bat2 = Movie.new
Bat2["title"] = "The Dark Knight"
Bat2["year_released"] = "2008"
Bat2["rated"] = "PG-13"
Bat2["studio_id"] = Warner["id"]
Bat2.save

Bat3 = Movie.new
Bat3["title"] = "The Dark Knight Rises"
Bat3["year_released"] = "2012"
Bat3["rated"] = "PG-13"
Bat3["studio_id"] = Warner["id"]
Bat3.save


#Insert _ row of Actors
Bale = Actor.new
Bale["name"] = "Christian Bale"
Bale.save

Caine = Actor.new
Caine["name"] = "Michael Caine"
Caine.save

Neeson = Actor.new
Neeson["name"] = "Liam Neeson"
Neeson.save

Holmes = Actor.new
Holmes["name"] = "Katie Holmes"
Holmes.save

Oldman = Actor.new
Oldman["name"] = "Gary Oldman"
Oldman.save

Ledger = Actor.new
Ledger["name"] = "Heath Ledger"
Ledger.save

Eckhart = Actor.new
Eckhart["name"] = "Aaron Eckhart"
Eckhart.save

Gyllenhaal = Actor.new
Gyllenhaal["name"] = "Maggie Gyllenhaal"
Gyllenhaal.save

Hardy = Actor.new
Hardy["name"] = "Tom Hardy"
Hardy.save

Gordon = Actor.new
Gordon["name"] = "Joseph Gordon-Levitt"
Gordon.save

Hathaway = Actor.new
Hathaway["name"] = "Anne Hathaway"
Hathaway.save

#Insert _ rows of Roles
B_Wayne1 = Role.new
B_Wayne1["movie_id"] = Bat1["id"]
B_Wayne1["actor_id"] = Bale["id"]
B_Wayne1["character_name"] = "Bruce Wayne"
B_Wayne1.save

Alfred = Role.new
Alfred["movie_id"] = Bat1["id"]
Alfred["actor_id"] = Caine["id"]
Alfred["character_name"] = "Alfred"
Alfred.save

Ghul = Role.new
Ghul["movie_id"] = Bat1["id"]
Ghul["actor_id"] = Neeson["id"]
Ghul["character_name"] = "Ra's Al Ghul"
Ghul.save

R_Dawes = Role.new
R_Dawes["movie_id"] = Bat1["id"]
R_Dawes["actor_id"] = Holmes["id"]
R_Dawes["character_name"] = "Rachel Dawes"
R_Dawes.save

C_Gordon1 = Role.new
C_Gordon1["movie_id"] = Bat1["id"]
C_Gordon1["actor_id"] = Oldman["id"]
C_Gordon1["character_name"] = "Commissioner Gordon"
C_Gordon1.save

B_Wayne2 = Role.new
B_Wayne2["movie_id"] = Bat2["id"]
B_Wayne2["actor_id"] = Bale["id"]
B_Wayne2["character_name"] = "Bruce Wayne"
B_Wayne2.save

Joker = Role.new
Joker["movie_id"] = Bat2["id"]
Joker["actor_id"] = Ledger["id"]
Joker["character_name"] = "Joker"
Joker.save

Dent = Role.new
Dent["movie_id"] = Bat2["id"]
Dent["actor_id"] = Eckhart["id"]
Dent["character_name"] = "Harvey Dent"
Dent.save

Alfred2 = Role.new
Alfred2["movie_id"] = Bat2["id"]
Alfred2["actor_id"] = Caine["id"]
Alfred2["character_name"] = "Alfred"
Alfred2.save

R_Dawes2 = Role.new
R_Dawes2["movie_id"] = Bat2["id"]
R_Dawes2["actor_id"] = Gyllenhaal["id"]
R_Dawes2["character_name"] = "Rachel Dawes"
R_Dawes2.save

Bruce_Wayne3 = Role.new
Bruce_Wayne3["movie_id"] = Bat3["id"]
Bruce_Wayne3["actor_id"] = Bale["id"]
Bruce_Wayne3["character_name"] = "Bruce Wayne"
Bruce_Wayne3.save

C_Gordon3 = Role.new
C_Gordon3["movie_id"] = Bat3["id"]
C_Gordon3["actor_id"] = Oldman["id"]
C_Gordon3["character_name"] = "Commissioner Gordon"
C_Gordon3.save

Bane = Role.new
Bane["movie_id"] = Bat3["id"]
Bane["actor_id"] = Hardy["id"]
Bane["character_name"] = "Bane"
Bane.save

J_Blake = Role.new
J_Blake["movie_id"] = Bat3["id"]
J_Blake["actor_id"] = Gordon["id"]
J_Blake["character_name"] = "John Blake"
J_Blake.save

S_Kyle = Role.new
S_Kyle["movie_id"] = Bat3["id"]
S_Kyle["actor_id"] = Hathaway["id"]
S_Kyle["character_name"] = "Selina Kyle"
S_Kyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all
for movie in movies
    studio = Studio.find_by({"id" => movie["studio_id"]})
    puts "#{movie["title"]}     #{movie["year_release"]}    #{movie["rated"]}   #{studio["name"]}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all

for role in roles
    movie = Movie.find_by({"id" => role["movie_id"]})
    actor = Actor.find_by({"id" => role["actor_id"]})
    puts "#{movie["title"]}     #{actor["name"]}     #{role["character_name"]}"
end
