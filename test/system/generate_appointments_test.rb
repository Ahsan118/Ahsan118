require "application_system_test_case"

class GenerateAppointmentsTest < ApplicationSystemTestCase
  setup do
    @generate_appointment = generate_appointments(:one)
  end

  test "visiting the index" do
    visit generate_appointments_url
    assert_selector "h1", text: "Generate Appointments"
  end

  test "creating a Generate appointment" do
    visit generate_appointments_url
    click_on "New Generate Appointment"

    click_on "Create Generate appointment"

    assert_text "Generate appointment was successfully created"
    click_on "Back"
  end

  test "updating a Generate appointment" do
    visit generate_appointments_url
    click_on "Edit", match: :first

    click_on "Update Generate appointment"

    assert_text "Generate appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Generate appointment" do
    visit generate_appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generate appointment was successfully destroyed"
  end
end
