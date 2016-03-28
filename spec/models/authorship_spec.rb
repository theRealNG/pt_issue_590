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

require 'rails_helper'

RSpec.describe Authorship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
