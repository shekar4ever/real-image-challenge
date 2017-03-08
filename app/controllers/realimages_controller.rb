class RealimagesController < ApplicationController
  before_action :set_realimage, only: [:show, :edit, :update, :destroy]
  require 'url_parse'
  # GET /realimages
  # GET /realimages.json
  def index
   # @realimages = Realimage.all
  end

  # GET /realimages/1
  # GET /realimages/1.json
  def show
  end
   
  # GET /realimages/new
  def new
    @realimage = Realimage.new
  end

  # GET /realimages/1/edit
  def edit
  end
  
  def search_record  
   @search_record = ::UrlParse.new.get_json_data(params[:search_name])
    render :partial => 'search_record'
  end

  # POST /realimages
  # POST /realimages.json
  def create
  end

  # PATCH/PUT /realimages/1
  # PATCH/PUT /realimages/1.json
  def update
  end

  # DELETE /realimages/1
  # DELETE /realimages/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realimage
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def realimage_params
    end
end
