class CardsController < ApplicationController
    def index
        @cards= Card.all
    end

    def new
        @card = Card.new
    end

    def create
        @card = Card.new(card_params)
        @card.save
    end
    private
    def card_params
        params.require(:card).permit(:term,:definition)
    end
end
