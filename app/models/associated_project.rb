class AssociatedProject < ApplicationRecord
  belongs_to :issue
  belongs_to :project
end
