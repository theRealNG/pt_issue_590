# == Schema Information
#
# Table name: authorships
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Authorship < ActiveRecord::Base
  belongs_to :book
  belongs_to :person
  has_paper_trail track_belongs_to_associations: ["book"]
end
