class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  has_secure_password
  has_many :aways

  after_create do
    aways.create(description: "My First Away Message!")
  end
end


