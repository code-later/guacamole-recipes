class Recipe
  include Guacamole::Model

  attribute :ingredients, Hash
  attribute :votes, Fixnum
  attribute :comments, Array[Comment]
end
