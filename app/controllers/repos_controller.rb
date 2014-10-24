class ReposController < ApplicationController
  before_action :authenticate_user!
  before_action :set_repo, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @repos = current_user.repos
    respond_with(@repos)
  end

  def show
    respond_with(@repo)
  end

  def new
    @repo = Repo.new
    respond_with(@repo)
  end

  def edit
  end

  def create
    @repo = Repo.new(repo_params.merge(user_id: current_user.id))
    @repo.save
    respond_with(@repo)
  end

  def update
    @repo.update(repo_params)
    respond_with(@repo)
  end

  def destroy
    @repo.destroy
    respond_with(@repo)
  end

  private

  def set_repo
    @repo = Repo.find(params[:id])
  end

  def repo_params
    params.require(:repo).permit(:name)
  end
end
