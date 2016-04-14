# == Schema Information
#
# Table name: parts
#
#  id   :integer          not null, primary key
#  name :string
#

class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies
  has_paper_trail
end
