class HomeController < ApplicationController
  def quiz
    @user=current_user
  end

  def index
    @user=current_user
    @start_date=Date.today
    @plan=Plana.all
    if @user&& !@user.admin
      if @user.plan &&(Date.today-@user.start_date).to_i<28
        @start_date=@user.start_date
        case @user.plan
          when 'A'
            @plan=Plana.all
          when "B"
            @plan=Planb.all
          when 'C'
            @plan=Planc.all

        end
      else
        render :quiz
      end

    end
  end
end
