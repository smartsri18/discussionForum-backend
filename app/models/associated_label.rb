# == Schema Information
#
# Table name: associated_labels
#
#  id         :integer          not null, primary key
#  issue_id   :integer          not null
#  label_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class AssociatedLabel < ApplicationRecord
  belongs_to :issue
  belongs_to :label

  validates_uniqueness_of :issue_id, scope: :label_id
end
