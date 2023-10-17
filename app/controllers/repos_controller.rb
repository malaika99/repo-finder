class ReposController < ApplicationController
  PER_PAGE = 10

  def index
    @repos = Kaminari.paginate_array(
      repositories['items'], total_count: repositories['total_count']
    ).page(page).per(PER_PAGE)
  end

  private

  def repositories
    @repositories || Github::Repository.search(params[:q], per_page: PER_PAGE, page: page)
  end

  def page
    params[:page].to_i
  end
end
