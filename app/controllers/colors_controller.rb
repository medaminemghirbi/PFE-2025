class ColorsController < ApplicationController
  def get_all_colors
    render json: Color.all
  end
end
