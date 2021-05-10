module Realiser
  module Web
    class SettingsController < Realiser::Web::ApplicationController
      def index
        @settings = Realiser::Setting.all
      end

      def new
        @setting = Realiser::Setting.new
      end

      def show
        @setting = Realiser::Setting.find_by(id: params[:id])
      end

      def edit
        @setting = Realiser::Setting.find_by(id: params[:id])
      end

      def update
        setting = Realiser::Setting.find_by(id: params[:id])
        if setting.update(form_params)
          flash[:success] = "Successfully to update the setting"
          return redirect_to web_setting_path(setting)
        end
        flash.now[:danger] = setting.errors.full_messages.join('')
        render :edit
      end

      def destroy
        setting = Realiser::Setting.find_by(id: params[:id])
        setting.destroy!
        flash[:success] = "Successfully deleted the setting"
        redirect_to root_path
      end

      def create
        @setting = Realiser::Setting.new(form_params)
        if @setting.invalid?
          flash.now[:danger] = @setting.errors.full_messages.join(', ')
          return render :new
        end
        @setting.save!
        flash[:success] = 'Succesfully created a new setting'
        redirect_to root_path
      end

      private

      def form_params
        params.require(:setting).permit(:key, :value)
      end
    end
  end
end
