# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  issue_id   :integer          not null
#  message    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  include Imageable

  belongs_to :user
  belongs_to :issue
end
