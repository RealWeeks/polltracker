class Bill < ActiveRecord::Base
  has_many :votes
  has_many :pols, through: :votes
end
