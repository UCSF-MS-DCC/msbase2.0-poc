class VisitsController < ApplicationController
  before_action :set_visit, only: [:update]
  
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html {}
      else
        format.html {}
      end
    end
  end

  private

    def set_visit
      @visit = Visit.find(params[:visit][:VisitID]) #the params hash coming from the form visits page forms require a hidden field ("VisitID")
    end

    def visit_params
      params.require(:visit).permit(:VisitID, :VisitType, :VisitStatus, :VisitDuringFlare)
    end
end
