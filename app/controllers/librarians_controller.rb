class LibrariansController < ApplicationController
  before_action :set_librarian, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:index, :show, :edit, :update, :destroy]

  # GET /librarians
  # GET /librarians.json
  def index
    if (session[:user_type] == ApplicationController::TYPE_ADMIN)
      @librarians = Librarian.where(:is_approved => 0)
    else
      redirect_to root_path
    end
  end

  # GET /librarians/1
  # GET /librarians/1.json
  def show
  end

  # GET /librarians/new
  def new
    @librarian = Librarian.new
    @librarian.is_approved = 0
  end

  # GET /librarians/1/edit
  def edit
    @without_password = params[:without_password]
  end

  # POST /librarians
  # POST /librarians.json
  def create
    @librarian = Librarian.new(librarian_params)
    @librarian[:is_approved] = 0
    respond_to do |format|
      if @librarian.save
        format.html { redirect_to @librarian, notice: 'Librarian was successfully created.' }
        format.json { render :show, status: :created, location: @librarian }
      else
        format.html { render :new }
        format.json { render json: @librarian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /librarians/1
  # PATCH/PUT /librarians/1.json
  def update
    respond_to do |format|
      if @librarian.update(librarian_params)
        format.html { redirect_to root_url, notice: 'Librarian was successfully updated.' }
        format.json { render :show, status: :ok, location: @librarian }
      else
        format.html { render :edit }
        format.json { render json: @librarian.errors, status: :unprocessable_entity }
      end
    end
  end

  def approve
    @librarian = Librarian.find(params[:id])
    @librarian.update_column(:is_approved, 1)
    redirect_to librarians_url
  end

  # DELETE /librarians/1
  # DELETE /librarians/1.json
  def destroy
    @librarian.destroy
    respond_to do |format|
      format.html { redirect_to librarians_url, notice: 'Librarian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_librarian
    @librarian = Librarian.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def librarian_params
    params.require(:librarian).permit(:email, :name, :password, :password_confirmation, :is_approved, :university_id, :library_id)
  end
end
