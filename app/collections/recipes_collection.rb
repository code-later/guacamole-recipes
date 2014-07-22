class RecipesCollection
  include Guacamole::Collection

  map do
    references :user
    embeds :comments
  end
end
