# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  image_url      :string           not null
#  imageable_type :string           not null
#  imageable_id   :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
