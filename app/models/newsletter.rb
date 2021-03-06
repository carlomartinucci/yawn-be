# == Schema Information
#
# Table name: newsletters
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newsletter < ApplicationRecord
  has_many :pages
  accepts_nested_attributes_for :pages
end
