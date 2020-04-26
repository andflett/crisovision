class Performance < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :scores

  scope :scores_excluding_user, -> (user) { joins(:scores).where('scores.user_id != ?', user.id) }

  def totals
    {
      song: self.scores.sum(:song),
      backdrop: self.scores.sum(:backdrop),
      outfit: self.scores.sum(:outfit)
    }
  end

  def song_score
    self.scores.sum(:song)
  end

  def backdrop_score
    self.scores.sum(:backdrop)
  end

  def outfit_score
    self.scores.sum(:outfit)
  end

  def overall_score
     self.scores.sum(:song) + self.scores.sum(:backdrop) + self.scores.sum(:outfit)
  end

end
