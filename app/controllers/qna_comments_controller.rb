class QnaCommentsController < ApplicationController
	def create
		comment = QnaComment.new
		comment.user_id = current_user.id
		comment.content = params[:content]
		comment.qna_id = params[:qna_id]
		comment.save!
		redirect_to "/qnas/#{comment.qna_id}"
	end
	
	def destroy
		comment = QnaComment.find(params[:id])
		comment.delete
		redirect_to "/qnas/#{params[:qna_id]}"
	end
end
