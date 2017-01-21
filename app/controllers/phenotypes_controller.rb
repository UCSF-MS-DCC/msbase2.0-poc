class PhenotypesController < ApplicationController
  before_action :set_phenotype, only: [:update]
  
  def update
    respond_to do |format|
      if @phenotype.update(phenotype_params)
        format.html {}
      else
        format.html {}
      end
    end
  end

  private

    def set_phenotype
      @phenotype = Phenotype.find(params[:phenotype][:subject_master_id]) #the params hash coming from the form subjects page forms require a hidden field ("SubjectID"). SubjectID serves as a primary key in the subjects table, but Rails doesn't intuit that.
    end

    def phenotype_params
      params.require(:phenotype).permit(:subject_master_id, :gender)
    end

end
