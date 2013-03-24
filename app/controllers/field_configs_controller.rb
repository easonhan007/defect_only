class FieldConfigsController < ApplicationController
  # GET /field_configs
  # GET /field_configs.json
  def index
    @field_configs = FieldConfig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_configs }
    end
  end

  # GET /field_configs/1
  # GET /field_configs/1.json
  def show
    @field_config = FieldConfig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_config }
    end
  end

  # GET /field_configs/new
  # GET /field_configs/new.json
  def new
    @field_config = FieldConfig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_config }
    end
  end

  # GET /field_configs/1/edit
  def edit
    @field_config = FieldConfig.find(params[:id])
  end

  # POST /field_configs
  # POST /field_configs.json
  def create
    @field_config = FieldConfig.new(params[:field_config])

    respond_to do |format|
      if @field_config.save
        format.html { redirect_to @field_config, notice: 'Field config was successfully created.' }
        format.json { render json: @field_config, status: :created, location: @field_config }
      else
        format.html { render action: "new" }
        format.json { render json: @field_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_configs/1
  # PUT /field_configs/1.json
  def update
    @field_config = FieldConfig.find(params[:id])

    respond_to do |format|
      if @field_config.update_attributes(params[:field_config])
        format.html { redirect_to @field_config, notice: 'Field config was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_configs/1
  # DELETE /field_configs/1.json
  def destroy
    @field_config = FieldConfig.find(params[:id])
    @field_config.destroy

    respond_to do |format|
      format.html { redirect_to field_configs_url }
      format.json { head :no_content }
    end
  end
end
