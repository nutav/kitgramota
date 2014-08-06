class Education::ClaimsController < ApplicationController
  load_resource class: 'Education::Claim'

  def index
  end

  def create
    @claim = Education::Claim.create(resource_params)
    if @claim.save!
      redirect_to education_level_path(@claim.level), 
      notice: 'Спасибо за Вашу заявку! Мы обязательно с Вами свяжемся в ближайшее время.'
    else
      redirect_to education_level_path(params[:education_claim][:education_level_id]), 
      notice: 'К сожалению, произошла ошибка, попробуйте повторить Вашу заявку или свяжитесь с нами по телефону.'
    end
  end

  def update
    @claim.update(resource_params)
    @claim.save!
    redirect_to education_claims_path
  end

  def destroy
    @claim.destroy
    redirect_to education_claims_path
  end

  def resource_params
    params.require(:education_claim).permit(:name, :phone, :email,
      :status, :comment, :education_level_id)
  end
end