class Issue < ApplicationRecord
  belongs_to :user

  has_many :comments
  has_many :associated_labels
  has_many :labels, through: :associated_labels
  has_one :associated_project
  has_one :project, through: :associated_project
end
