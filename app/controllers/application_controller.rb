class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  def after_sign_in_path_for(resource)
    welcome_thanks_path
  end

  private

    def set_locale
      I18n.locale = params[:locale] if params[:locale].present?
    end

    def default_url_options(options = {})
      {locale: I18n.locale}
    end
end
