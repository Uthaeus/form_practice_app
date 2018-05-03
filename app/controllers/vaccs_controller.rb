class VaccsController < ApplicationController
  before_action :set_vacc, only: [:show, :edit, :update, :destroy]
  def index
    @vaccs = Vacc.all
  end

  def new
    @vacc = Vacc.new
  end

  def create
    @vacc = Vacc.new(vacc_params)

    respond_to do |format|
      if @vacc.save
        format.html { redirect_to vaccs_path, notice: 'Successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @vacc.update(vacc_params)
        format.html { redirect_to @vacc, notice: 'Successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def show

  end

  def destroy
    @vacc.destroy

    respond_to do |format|
      format.html { redirect_to vaccs_url, notice: 'Successfully removed' }
    end
  end

  private

    def set_vacc
      @vacc = Vacc.find(params[:id])
    end

    def vacc_params
      params.require(:vacc).permit(:title)
    end

end
