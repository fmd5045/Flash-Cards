class CardCollectionsController < ApplicationController
  before_action :set_card_collection, only: %i[ show edit update destroy ]

  # GET /card_collections or /card_collections.json
  def index
    @card_collections = CardCollection.all
  end

  # GET /card_collections/1 or /card_collections/1.json
  def show
  end

  # GET /card_collections/new
  def new
    @card_collection = CardCollection.new
  end

  # GET /card_collections/1/edit
  def edit
  end

  # POST /card_collections or /card_collections.json
  def create
    @card_collection = CardCollection.new(card_collection_params)

    respond_to do |format|
      if @card_collection.save
        format.html { redirect_to card_collection_url(@card_collection), notice: "Card collection was successfully created." }
        format.json { render :show, status: :created, location: @card_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_collections/1 or /card_collections/1.json
  def update
    respond_to do |format|
      if @card_collection.update(card_collection_params)
        format.html { redirect_to card_collection_url(@card_collection), notice: "Card collection was successfully updated." }
        format.json { render :show, status: :ok, location: @card_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_collections/1 or /card_collections/1.json
  def destroy
    @card_collection.destroy

    respond_to do |format|
      format.html { redirect_to card_collections_url, notice: "Card collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_collection
      @card_collection = CardCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_collection_params
      params.require(:card_collection).permit(:name)
    end
end