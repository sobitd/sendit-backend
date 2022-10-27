class ParcelsController < ApplicationController
  before_action :get_user
  before_action :set_parcel, only: %i[show edit update destroy]

  # GET /parcels
  def index
    @parcels = @user.parcels
  end

  # GET /parcels/new
  def new
    @parcel = @user.parcels.build
  end

  # POST /parcels
  def create
    @parcel = @user.parcels.build(post_params)

    respond_to do |format|
      if @parcel.save
        format.html { redirect_to @parcel, notice: 'Parcel order was successfully placed.' }
        format.json { render :show, status: :created, location: @parcel }

      else
        format.html { render :edit }
        format.json { render json: @parcel.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /parcels/1
  # PATCH/PUT /parcels/1.json
  def update
    respond_to do |format|
      if @parcel.update(post_params)
        format.html do
          redirect_to user_parcel_path(@user), notice: 'Parcel delivery order was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @parcel }
      else
        format.html { render :edit }
        format.json { render json: @parcel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @parcel.destroy
    respond_to do |format|
      format.html { redirect_to user_parcels_path(@user), notice: 'Parcel delivery order was successfully canceled' }
      format.json { head :no_content }
    end
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  # use callbacks to share common setup or constraints between actions.
  def set_parcel
    @parcel = @user.parcels.find(params[:id])
  end

  def post_params
    params.require(:parcel).permit(:body, :user_id)
  end
end
