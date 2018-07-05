class QnasController < ApplicationController
	before_action :authenticate_user!, only: [:new, :destroy, :update, :edit, :show]
	# before_action :check_ownership, only: [:create, :destroy, :update]
	
  def index
		@qna = Qna.all
  end

  def new
  end
	
	def create
		@qna = Qna.new
		@qna.user_id = current_user.id
		@qna.title = params[:title]
		@qna.content = params[:content]
		@qna.view_count = 0
		@qna.save
		redirect_to "/qnas/#{@qna.id}", notice: "질문 작성 완료"
	end
	
	def show
		@qna = Qna.find(params[:id])
		@comments = @qna.qna_comments.all
	end
	
  def edit
		@qna = Qna.find(params[:id])
  end
	
	def update
		@qna = Qna.find(params[:id])
		@qna.title = params[:title]
		@qna.content = params[:content]
		@qna.save
		redirect_to "/qnas/#{@qna.id}", notice: "수정 완료"
	end
	
	def destroy
		@qna = Qna.find(params[:id])
		@qna.delete
		redirect_to "/qnas", notice: "삭제 완료"
	end
end
