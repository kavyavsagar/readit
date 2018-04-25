class SearchController < ApplicationController
  skip_before_action :authenticate_user

  def index

	#@search_res = Article.where('title LIKE ?', "%#{params[:q]}%")

	@search_res = Article.where('title LIKE :search OR post LIKE :search', search: "%#{params[:q]}%") if params[:q].present?

  end

end