class DashboardController < ApplicationController
def index;end
  def available_doctors
    #first way
    @doctors = Doctor.left_outer_joins(:appointments).where(appointments: {doctor_id: nil})
    #second_way
    # @doctor = Doctor.all - Doctor.joins(:appointments)
  end
end
