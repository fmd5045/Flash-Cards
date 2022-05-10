class CardsController < ApplicationController
    def index
        @cards= Card.all
    end

    def show
        @card = Card.find(params[:id])
    end

    def new
        @card = Card.new
    end

    def edit
        @card = Card.find(params[:id])
    end

    def update
        @card = Card.find(params[:id])
        if @card.update(card_params)
            flash[:success] = "You've successfullly updated a card!"
            redirect_to cards_path
        else
            flash[:error] = @card.errors.full_messages.first
            redirect_to edit_card_path(@card)
        end
    end

    def create
        @card = Card.new(card_params)
        if @card.save
            flash[:success] = "You've successfullly created a card!"
            redirect_to cards_path
        else
            flash[:error] = @card.errors.full_messages.first
            redirect_to new_card_path
        end
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
        flash[:success] = "You've successfullly deleted a card!"
        redirect_to cards_path  
        # else
        #     flash.now[:error] = @card.errors.full_messages.first
        #     render :index
        # end
    end

    private
    def card_params
        params.require(:card).permit(:term,:definition)
    end
end
