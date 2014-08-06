class RecipesCollection
  include Guacamole::Collection

  map do
    # references :user
    # embeds :comments
    embeds :ingredients
  end
end
