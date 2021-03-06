# == Schema Information
#
# Table name: paragraphs
#
#  id         :integer          not null, primary key
#  section_id :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Paragraph < ActiveRecord::Base
  belongs_to :section
  has_paper_trail
end
