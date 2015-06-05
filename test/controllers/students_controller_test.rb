require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { adm: @student.adm, admitted_on: @student.admitted_on, bio: @student.bio, county: @student.county, dob: @student.dob, dorm: @student.dorm, email: @student.email, form: @student.form, gender: @student.gender, kcpe: @student.kcpe, name: @student.name, parent: @student.parent, previous_sch: @student.previous_sch, sch_code: @student.sch_code, sch_name: @student.sch_name, stream: @student.stream }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { adm: @student.adm, admitted_on: @student.admitted_on, bio: @student.bio, county: @student.county, dob: @student.dob, dorm: @student.dorm, email: @student.email, form: @student.form, gender: @student.gender, kcpe: @student.kcpe, name: @student.name, parent: @student.parent, previous_sch: @student.previous_sch, sch_code: @student.sch_code, sch_name: @student.sch_name, stream: @student.stream }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
