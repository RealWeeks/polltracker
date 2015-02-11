# == Schema Information
#
# Table name: districts
#
#  id         :integer          not null, primary key
#  name       :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class District < ActiveRecord::Base
  has_many :pols
end
