# == Schema Information
#
# Table name: assemblies
#
#  id   :integer          not null, primary key
#  name :string
#

class Assembly < ActiveRecord::Base
  has_and_belongs_to_many :parts
  has_paper_trail
end
