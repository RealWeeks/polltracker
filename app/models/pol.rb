# == Schema Information
#
# Table name: pols
#
#  id          :integer          not null, primary key
#  party       :string
#  name        :string
#  district_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Pol < ActiveRecord::Base
  belongs_to :district
  has_many :votes
  has_many :bills, through: :votes
end
