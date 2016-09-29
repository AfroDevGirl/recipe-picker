# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Pantry.destroy_all

user1 = User.create(name: "Alexis", email: "alexis@test.com", password: "password")
user2 = User.create(name: "Mark", email: "mark@test.com", password: "password")
user3 = User.create(name: "Jeff", email: "jeff@test.com", password: "password")
user4 = User.create(name: "Lloyd", email: "lloyd@test.com", password: "password")

butter = Item.create(name: "butter")
milk = Item.create(name: "milk")
cheese = Item.create(name: "cheese")
chicken = Item.create(name: "chicken")
beef = Item.create(name: "beef")
bread = Item.create(name: "bread")
eggs = Item.create(name: "eggs")
yogurt = Item.create(name: "yogurt")
ketchup = Item.create(name: "ketchup")
lettuce = Item.create(name: "lettuce")

items = [butter, milk, cheese, chicken, beef, bread, eggs, yogurt, ketchup, lettuce]
users = [user1, user2, user3, user4]

users.each do |user|
  user.pantry = Pantry.create
  (rand(1..5)).times do |num|
    user.items << items[rand(0...10)]
  end
end
