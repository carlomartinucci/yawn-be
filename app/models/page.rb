# == Schema Information
#
# Table name: pages
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  url           :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  newsletter_id :integer
#

class Page < ApplicationRecord
  belongs_to :newsletter
end
