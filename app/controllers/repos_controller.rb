class ReposController < ApplicationController
  def index
    if params[:search].present?
      @repositories = GithubService.search_repositories(params[:search])
      @repositories = Kaminari.paginate_array(@repositories).page(params[:page]).per(10)
    end
  end
end
