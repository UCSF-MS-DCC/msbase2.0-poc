class DemographicsController < ApplicationController

  def update
    respond_to do |format|
      if @demographic.update(demographic_params)
        format.html {}
      else
        format.html {}
      end
    end
  end

  private

    def set_demographic
      @demographic = Demographic.find(params[:demographic][:subjectid])
    end

    def demographic_params
      params.require(:demographic).permit(:subjectid, :FamilyHxOfMS, :SignificantHistory)
    end

end
