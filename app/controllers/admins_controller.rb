class AdminsController < ApplicationController
  # before_filter :authenticate_admin!, except: :index
  load_resource class: 'Admin'

  def index
  end

  def new
  end

  def create
    raise resource_params.inspect
    @admin = Admin.create(resource_params)
    if @admin.save!
      redirect_to admins_path, notice: "Администратор #{@admin.login} был успешно создан"
    else
      render action: :new 
    end  
  end

  def edit
  end

  def update
    @admin.update(resource_params)
    if @admin.save!
      redirect_to admins_path, notice: "Администратор #{@admin.login} был успешно изменён"
    else
      render action: :edit
    end 
  end

  def destroy
    @admin.destroy
    redirect_to admins_path
  end

  def resource_params
    params.require(:admin).permit(:login, :password)
  end
end