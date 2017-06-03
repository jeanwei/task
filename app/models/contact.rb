class Contact < ApplicationRecord
  validates_presence_of :name, :email, :message
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end