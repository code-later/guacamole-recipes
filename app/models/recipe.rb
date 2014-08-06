class Recipe
  include Guacamole::Model

  # accepts_nested_attributes_for :ingredients

  attribute :title, String
  attribute :preparations, String
  attribute :ingredients, Array[Ingredient]
  attribute :votes, Fixnum, default: 0
  attribute :comments, Array[Comment]

  def ingredients_attributes=(attributes)
    self.ingredients = attributes.values.collect do |attr|
      Ingredient.new attr
    end
  end

  AssociationReflection = Struct.new(:klass)

  def self.reflect_on_association(t)
    AssociationReflection.new t.to_s.singularize.classify.constantize
  end
end
