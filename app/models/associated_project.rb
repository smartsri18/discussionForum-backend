# == Schema Information
#
# Table name: associated_projects
#
#  id         :integer          not null, primary key
#  issue_id   :integer          not null
#  project_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AssociatedProject < ApplicationRecord
  belongs_to :issue
  belongs_to :project

  validates_uniqueness_of :issue_id, scope: :project_id
end
