class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @stories = Story.all
  end

  def cv
  end
end
