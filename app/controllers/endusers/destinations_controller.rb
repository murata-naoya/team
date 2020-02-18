class Endusers::DestinationsController < ApplicationController
    def update
        @destination = Destionation.find_by(user_id: current_user)
        if @destination.update(params_destination)
            redirect_to new_orders_params
        end
    end
end
