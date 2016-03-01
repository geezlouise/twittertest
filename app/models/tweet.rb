class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  
  validates :message, presence: true
  validates :message, length: {maximum: 140, too_long: "A tweet can only be 140 characters max, everybody knows that."}
end
