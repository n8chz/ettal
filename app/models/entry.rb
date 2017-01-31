class Entry < ApplicationRecord
  belongs_to :transaction
  belongs_to :item
  belongs_to :account
end
