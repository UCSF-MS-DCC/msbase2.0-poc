class SubjectsController < ApplicationController
  before_action :set_subject, only: [:update]

  def index
    @subjects = Subject.all
    @phis = Phi.all
    @aliases = Alias.all
    @subject = Subject.new

  end

  def show
    @subject = Subject.find_by(SubjectID: subject_params[:SubjectID])
    @phenotype = Phenotype.find_by(subject_master_id: subject_params[:SubjectID])
    @phi = Phi.find_by(SubjectID: subject_params[:SubjectID])
    @demographic = Demographic.find_by(subjectid: subject_params[:SubjectID])
    @studysubject = StudySubject.find_by(SubjectID: subject_params[:SubjectID])
    @study = Study.find_by(StudyID: @studysubject.StudyID)
    @aliases = Alias.where(subjectid: subject_params[:SubjectID])
    @visits = Visit.where(SubjectID: subject_params[:SubjectID]).order('VisitSeq ASC')

  end

  def find
    @term = params[:term]
    @aliases = Alias.where("alias_term1 LIKE ?", "%#{@term}%").or(Alias.where("alias_term2 LIKE ?", "%#{@term}%")).limit(50)

    render json: {data:@aliases}
  end

  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html {}
      else
        format.html {}
      end
    end

  end

  private

    def set_subject
      @subject = Subject.find(params[:subject][:SubjectID]) #the params hash coming from the form subjects page forms require a hidden field ("SubjectID"). SubjectID serves as a primary key in the subjects table, but Rails doesn't intuit that.
    end

    def subject_params
      params.require(:subject).permit(:SubjectID, :AffectionStatus, :Center, :DiseaseStatusFlag, :DoNotContact, :DoNotContactStatus)
    end

end
