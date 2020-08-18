# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Project < ApplicationRecord

  has_many :associated_projects

  validates :name, :description, presence: true
  validates :name, uniqueness: {case_sensitive: false, allow_blank: false}
end
