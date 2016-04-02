# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  has_many :authorships
  has_many :authors, through: :authorships, source: :person
  has_paper_trail
end
