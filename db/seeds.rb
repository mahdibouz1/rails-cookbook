# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning up database..."
Bookmark.destroy_all
Recipe.destroy_all
Category.destroy_all
puts "Database cleaned."

puts "Creating recipes..."

recipes = Recipe.create!([
  {
    name: "Spaghetti Carbonara",
    description: "A true Italian Carbonara recipe, ready in about 30 minutes. No cream involved!",
    image_url: "https://example.com/carbonara.jpg",
    rating: 4.5
  },
  {
    name: "Avocado Toast",
    description: "Simple and delicious avocado toast with olive oil and lemon.",
    image_url: "https://example.com/avocado-toast.jpg",
    rating: 4.0
  },
  {
    name: "Chicken Tikka Masala",
    description: "A creamy and spicy chicken dish served with basmati rice.",
    image_url: "https://example.com/tikka-masala.jpg",
    rating: 4.8
  },
  {
    name: "Classic Pancakes",
    description: "Fluffy and golden pancakes, perfect for breakfast.",
    image_url: "https://example.com/pancakes.jpg",
    rating: 4.2
  }
])

puts "Created #{recipes.count} recipes!"
