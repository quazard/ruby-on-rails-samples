# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.create!(title: "Harry Potter and the Philosophers Stone", author: "J.K. Rowling", pages: 320, published: Date.new(1997, 6, 26), image: "https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/220px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg")
Book.create!(title: "The Fellowship of the Ring", author: "J.R.R. Tolkien", pages: 432, published: Date.new(1954, 7, 29), image: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/The_Fellowship_of_the_Ring_cover.gif/220px-The_Fellowship_of_the_Ring_cover.gif")
Book.create!(title: "The Two Towers", author: "J.R.R. Tolkien", pages: 352, published: Date.new(1954, 7, 29), image: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/The_Two_Towers_cover.gif/220px-The_Two_Towers_cover.gif")
Book.create!(title: "The Return of the King", author: "J.R.R. Tolkien", pages: 416, published: Date.new(1955, 7, 29), image: "https://upload.wikimedia.org/wikipedia/en/thumb/1/11/The_Return_of_the_King_cover.gif/220px-The_Return_of_the_King_cover.gif")
Book.create!(title: "The Hobbit", author: "J.R.R. Tolkien", pages: 310, published: Date.new(1937, 7, 29), image: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/TheHobbit_FirstEdition.jpg/220px-TheHobbit_FirstEdition.jpg")
Book.create!(title: "The Silmarillion", author: "J.R.R. Tolkien", pages: 416, published: Date.new(1977, 7, 29), image: "https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Silmarillion.png/220px-Silmarillion.png")
