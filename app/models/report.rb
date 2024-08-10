class Report < ApplicationRecord
  validates :address, :activities, :summary, :user_id, presence: true
  belongs_to :user
end
