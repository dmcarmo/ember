class SettingsController < ApplicationController
  before_action :skip_authorization
  def edit
    @setting = current_user.setting
  end

  def update
    @setting = current_user.setting

    if @setting.update(setting_params)
      redirect_to root_path, notice: 'Settings updated'
    else
      render :edit
    end
  end

  private

  def setting_params
    params.require(:setting).permit(:location_enable)
  end
end
