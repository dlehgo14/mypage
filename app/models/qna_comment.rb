class QnaComment < ApplicationRecord
  belongs_to :user
  belongs_to :qna
end
