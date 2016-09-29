class Item < ApplicationRecord
  belongs_to :pantry
  self.per_page = 20
end
