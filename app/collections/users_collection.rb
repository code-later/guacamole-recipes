class UsersCollection
  include Guacamole::Collection

  map do
    referenced_by :recipes
  end
end
