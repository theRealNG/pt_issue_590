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
end
