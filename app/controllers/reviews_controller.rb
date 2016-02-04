class ReviewsController < ApplicationController
	def create
		@user = User.friendly.find(params[:id])
		@review = @user.reviews.create(review_params)
		redirect_to user_path(@user)
	end

	private
		def review_params
			params.require(:review).permit(:reviewer, :body, :rskill)
		end

end
