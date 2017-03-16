class Api::V1::ReportsController < ApplicationController

	def index
		reports = Report.all
		render json: {data: reports}.to_json(except: :updated_at)
	end

	def create
		report = Report.new(report_params)
		if report.save
			head :ok
		else
			head :internal_server_error
		end
	end

	private

	def report_params
		params.require(:reports).permit(:category, :description, :latitude, :longitude, :image)
	end

end