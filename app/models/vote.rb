# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  bill_id    :integer
#  pol_id     :integer
#  how_vote   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
  belongs_to :bill
  belongs_to :pol
end
