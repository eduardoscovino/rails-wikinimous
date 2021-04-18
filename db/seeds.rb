# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def prepare
  title = Faker::TvShows::RickAndMorty.character
  content = Faker::TvShows::RickAndMorty.quote
  {title: title, content: content}
end

10.times do 
  Article.create(prepare)
end
