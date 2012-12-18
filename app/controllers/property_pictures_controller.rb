class PropertyPicturesController < ApplicationController
  # GET /property_pictures
  # GET /property_pictures.json
  def index
    @property_pictures = PropertyPicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_pictures }
    end
  end

  # GET /property_pictures/1
  # GET /property_pictures/1.json
  def show
    @property_picture = PropertyPicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_picture }
    end
  end

  # GET /property_pictures/new
  # GET /property_pictures/new.json
  def new
    @property_picture = PropertyPicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_picture }
    end
  end

  # GET /property_pictures/1/edit
  def edit
    @property_picture = PropertyPicture.find(params[:id])
  end

  # POST /property_pictures
  # POST /property_pictures.json
  def create
    @property_picture = PropertyPicture.new(params[:property_picture])

    respond_to do |format|
      if @property_picture.save
        format.html { redirect_to @property_picture, notice: 'Property picture was successfully created.' }
        format.json { render json: @property_picture, status: :created, location: @property_picture }
      else
        format.html { render action: "new" }
        format.json { render json: @property_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_pictures/1
  # PUT /property_pictures/1.json
  def update
    @property_picture = PropertyPicture.find(params[:id])

    respond_to do |format|
      if @property_picture.update_attributes(params[:property_picture])
        format.html { redirect_to @property_picture, notice: 'Property picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_pictures/1
  # DELETE /property_pictures/1.json
  def destroy
    @property_picture = PropertyPicture.find(params[:id])
    @property_picture.destroy

    respond_to do |format|
      format.html { redirect_to property_pictures_url }
      format.json { head :no_content }
    end
  end
end
