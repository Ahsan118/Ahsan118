require "test_helper"

class GenerateAppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generate_appointment = generate_appointments(:one)
  end

  test "should get index" do
    get generate_appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_generate_appointment_url
    assert_response :success
  end

  test "should create generate_appointment" do
    assert_difference('GenerateAppointment.count') do
      post generate_appointments_url, params: { generate_appointment: {  } }
    end

    assert_redirected_to generate_appointment_url(GenerateAppointment.last)
  end

  test "should show generate_appointment" do
    get generate_appointment_url(@generate_appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_generate_appointment_url(@generate_appointment)
    assert_response :success
  end

  test "should update generate_appointment" do
    patch generate_appointment_url(@generate_appointment), params: { generate_appointment: {  } }
    assert_redirected_to generate_appointment_url(@generate_appointment)
  end

  test "should destroy generate_appointment" do
    assert_difference('GenerateAppointment.count', -1) do
      delete generate_appointment_url(@generate_appointment)
    end

    assert_redirected_to generate_appointments_url
  end
end
