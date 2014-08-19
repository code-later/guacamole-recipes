class User
  include Guacamole::Model
  include ActiveModel::SecurePassword

  has_secure_password

  validates :username, presence: true
  validates :password, length: { minimum: 6 }, allow_blank: true

  attribute :username, String
  attribute :password_digest, String
  attribute :recipes, Array[Recipe]
end
