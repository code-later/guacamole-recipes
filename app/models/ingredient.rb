class Ingredient
  include Guacamole::Model

  attribute :ingredient, String
  attribute :amount, String

  def to_partial_path
    "recipes/ingredient"
  end
end
