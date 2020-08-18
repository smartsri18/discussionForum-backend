# == Schema Information
#
# Table name: labels
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Label < ApplicationRecord
  
  has_many :associated_labels

  validates :name, :description, presence: true
  validates :name, uniqueness: {case_sensitive: false, allow_blank: false}
end
