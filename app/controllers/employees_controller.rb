class EmployeesController < ApplicationController
  def index
    @employees = EmployeeDetail.all;
  end

  def show
    @employee = EmployeeDetail.find(params[:id])
  end

  def new
    @employee = EmployeeDetail.new
  end

  def create
    employee = EmployeeDetail.create(employee_params)
    redirect_to employee_path
  end
   def edit
    @employee = EmployeeDetail.find(params[:id])
 end
  def update
    @employee = EmployeeDetail.find(params[:id]) 
    @employee.update(employee_params)
    redirect_to employee_path
  end
  def destroy
    @employee = EmployeeDetail.find(params[:id]) 
    @employee.destroy
    redirect_to employee_path


  end
 private
 def employee_params
  params.require(:employeeDetail).permit(:name,:age,:gender,:designation)
 end

 
end
