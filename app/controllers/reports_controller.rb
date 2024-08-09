class ReportsController < ApplicationController
  def new
    @report = Report.new
  end

  def create
    @user = current_user
    @report = Report.new(report_params)
    if @report.save
      redirect_to new_report_path, notice: 'Thank you for your report. It has been submitted successfully.'
    else
      render :new, alert: "There was a problem saving your report"
    end
  end

  def destroy
    @report = Report.find(params[:id])
    if @report.destroy
      redirect_to reports_path, notice: 'The report was successfully deleted.'
    else
      redirect_to reports_path, alert: 'There was a problem deleting the report.'
    end
  end


  def index
    @reports = current_user.reports
    year = params[:year]
    @places = if year.nil?
                  Place.where("is_2017", true)
                 else
                  Place.where("is_#{year} = ?", true)
                 end
  end

  def show
    @report = Report.find(params[:id])
  end

  private

  def report_params
    params.require(:report).permit(:name, :pogo_hub_name, :address, :nearby_landmarks, :activities, :individuals, :vehicles, :summary, :user_id)
  end
end
