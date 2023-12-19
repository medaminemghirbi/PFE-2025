class AddressesController < ApplicationController
      #************************* CRUD functionlity ****************************#
    def index
      render json: Address.all.order(id: :ASC)
    end
    def create
        @address = Address.new(post_params)
        if @address.save

            render json: @address, statut: :created, location: @address
        else
          render json: @address.errors, statut: :unprocessable_entity
        end
    end

    def update
        @address = Address.find(params[:id])
        if @address.update(post_params2)
            render json: @address

        else
            render json: @langue.errors, statut: :unprocessable_entity
        end
    end

    def destroy
        @address = Address.find(params[:id])
        @address.destroy
    end
 #************************* custom functionlity ***************************#
 def get_Address_by_Delegation
    @ddress = Address.where(delegation_id: params[:delegation_id])
    render json: @ddress
  end


  #************************* les fonctions private de classe *************#
  private

  def post_params
      params.permit(:user_id, :delegation_id, :street)
  end
  def post_params2
      params.permit(:date_postulation, :etat, :user_id, :offre_id, :interview_date)
  end
  def set_post
      @address = Address.find(params[:id])
   end

end