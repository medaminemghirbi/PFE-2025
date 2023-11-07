class MunicipalitiesController < ApplicationController
    def get_all_municipalities
      render json: Municipalitie.all
    end
end