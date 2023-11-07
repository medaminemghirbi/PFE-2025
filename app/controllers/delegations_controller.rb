class DelegationsController < ApplicationController
  def get_Delegation_by_Municipalities
    @delegations = Delegation.where(municipalitie_id: params[:municipalitie_id])
    render json: @delegations
  end
end