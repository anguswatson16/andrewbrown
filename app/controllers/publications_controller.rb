class PublicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @publications = Publication.all
  end

  def new
    @publication = Publication.new
  end

  def create
    @publication = Publication.new(publication_params)
    @publication.date = Date.today
    if @publication.save
      redirect_to publications_path(@publication)
    else
      render :new
    end
  end

  def show
    @publication = Publication.find(params[:id])
  end

  def edit
    @publication = Publication.find(params[:id])
  end

  def update
    @publication = Publication.find(params[:id])
    @publication.update(publciation_params)
  end

  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy
    redirect_to publications_path
  end

  private

  def publication_params
    params.require(:publication).permit(:name, :description, :collaborators, :journal)
  end
end
