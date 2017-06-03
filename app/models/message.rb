class Message < ApplicationRecord
  belongs_to :contact
  validates_presence_of :contact_id, :body
end
