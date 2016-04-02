# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  has_many :authorships
  has_many :books, through: :authorships
  has_paper_trail

  serialize :info, Hash
end
