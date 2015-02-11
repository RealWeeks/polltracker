# == Schema Information
#
# Table name: bills
#
#  id         :integer          not null, primary key
#  name       :string
#  number     :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bill < ActiveRecord::Base
  has_many :votes
  has_many :pols, through: :votes
end
