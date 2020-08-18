# == Schema Information
#
# Table name: issues
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  context    :text             not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Issue < ApplicationRecord
  belongs_to :user

  has_many :comments
  has_many :associated_labels
  has_many :labels, through: :associated_labels
  has_one :associated_project
  has_one :project, through: :associated_project

  enum status: [:open, :closed, :deferred]

  validates :title, :context, presence: true
end
