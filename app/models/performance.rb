class Perfomance < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

end
