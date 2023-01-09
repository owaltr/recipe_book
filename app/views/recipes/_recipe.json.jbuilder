json.extract! recipe, :id, :title, :author, :description, :image, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
json.image url_for(recipe.image)
