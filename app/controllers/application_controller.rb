class ApplicationController < ActionController::API
  def employees
    render json: {
      employees: Employee.all.map do |employee|
        {
          name: employee.name,
          checked_in_days: CheckInRecord.where(:employee_id => (Employee.find_by id: employee.id)).count,
          checked_out_days: CheckOutRecord.where(:employee_id => (Employee.find_by id: employee.id)).count
        }
      end
    }
  end

  def dashboard
    best = Hash.new(0)
    Employee.all.each do |e|
      temp = CheckInRecord.where(:employee_id => (Employee.find_by id: e.id)).count
      best[e.name]+=temp
    end
    
    beste = [best.max_by{|k, v| v}].to_h
    worste = best.group_by{|k, v| v}.min_by{|k, v| k}.last.to_h
    render json: {
      total_employees: Employee.count,
      best_employee: beste,
      worst_employee: worste
    }
  end
end
