class Comment
  include Guacamole::Model

  attribute :username, String, default: 'Anon'
  attribute :text, String
end
