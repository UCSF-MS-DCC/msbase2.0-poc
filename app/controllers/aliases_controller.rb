class AliasesController < ApplicationController
  def index
    @querytable = Querytable.find_by(SubjectID: 12)
    @center = Center.find_by(centerid: @querytable.Center)
  end

  def change_placeholder
    output = "The input is: "+params[:input]
    the_number = "The id is: "+params[:subject]
    render json: {'message': output, 'number': the_number}

  end
end
