class Subgroup < ApplicationRecord
  self.table_name = 'study_finder_subgroups'
  belongs_to :group, optional: true
end