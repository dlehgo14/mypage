class Qna < ApplicationRecord
  belongs_to :user
	has_many :qna_comments
end
