class Comment < ApplicationRecord
  # ActiveRecord association
  belongs_to :article
end
