class Qna < ApplicationRecord
	resourcify
	include Authority::Abilities
	# @qna.updatable_by? @qna.deletable_by?
  belongs_to :user
	has_many :qna_comments, dependent: :destroy
end
