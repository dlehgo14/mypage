class QnaComment < ApplicationRecord
	resourcify
	include Authority::Abilities
	# @qna.updatable_by? @qna.deletable_by?
  belongs_to :user
  belongs_to :qna
end
