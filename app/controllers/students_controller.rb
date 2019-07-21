class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
        @student = Student.find(params[:id])
        @student.active = !@student.active 
        @student.save
        redirect_to student_path(@student)
      end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end




# solution
# class StudentsController < ApplicationController
  
#   def index
#     @students = Student.all
#   end

#   def show
#     @student = Student.find(params[:id])
#   end

#   def activate
#     @student = Student.find(params[:id])
#     @student.active = !@student.active 
#     @student.save
#     redirect_to student_path(@student)
#   end
# end

# on index view

# <div>
#   <% @students.each do |student| %>
#     <div><%= link_to student.to_s, student_path(student) %></div>
#   <% end %>
# </div>

# on show view

# <h1><%= @student.to_s %></h1>

# <% if @student.active %>
#   This student is currently active.
# <% else %>
#   This student is currently inactive.
# <% end %>

# on routes.rb
# Rails.application.routes.draw do
#   resources :students, only: [:index, :show]
#   get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
# end