# == Schema Information
#
# Table name: sections
#
#  id          :integer          not null, primary key
#  document_id :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Section < ActiveRecord::Base
  belongs_to :document
  has_many :paragraphs
  has_paper_trail reify_associations: false
end
