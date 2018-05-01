class VaccsController < ApplicationController

  def index
    @vaccs = Vacc.all
  end
end
