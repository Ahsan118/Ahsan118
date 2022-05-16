class GenerateAppointmentsController < ApplicationController
  before_action :set_generate_appointment, only: %i[ show edit update destroy ]

  # GET /generate_appointments or /generate_appointments.json
  def index
    @generate_appointments = Appointment.all
  end

  # GET /generate_appointments/1 or /generate_appointments/1.json
  def show
  end

  # GET /generate_appointments/new
  def new
    @generate_appointment = Appointment.new
  end

  # GET /generate_appointments/1/edit
  def edit
  end

  # POST /generate_appointments or /generate_appointments.json
  def create
    @generate_appointment = Appointment.new(generate_appointment_params)

    respond_to do |format|
      if @generate_appointment.save
        format.html { redirect_to generate_appointment_url(@generate_appointment), notice: "Generate appointment was successfully created." }
        format.json { render :show, status: :created, location: @generate_appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @generate_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generate_appointments/1 or /generate_appointments/1.json
  def update
    respond_to do |format|
      if @generate_appointment.update(generate_appointment_params)
        format.html { redirect_to generate_appointment_url(@generate_appointment), notice: "Generate appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @generate_appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @generate_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generate_appointments/1 or /generate_appointments/1.json
  def destroy
    @generate_appointment.destroy

    respond_to do |format|
      format.html { redirect_to generate_appointments_url, notice: "Generate appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generate_appointment
      @generate_appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generate_appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_datetime)
    end
end
