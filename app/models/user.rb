class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :performances
  has_many :scores

  def scores_excluding_me
    scores.joins(:performance).where('performances.user_id != ?', self.id)
  end

end
