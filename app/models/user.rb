# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  github_username :string           not null
#  github_url      :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord

  has_many :comments
  has_many :issues

  validates :name, :github_url, presence: true
  validates :email, presence: true, format:{with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i },uniqueness: {case_sensitive: false, allow_blank: false}, length: { maximum: 250 }
  validates :github_username, presence: true, uniqueness: {case_sensitive: false, allow_blank: false}
end
