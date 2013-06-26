class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || preferred_locale || I18n.default_locale
  end

  private
    def available_languages
      %w{en pt-BR} # TODO - find another way to get the language array
    end

    def preferred_locale
      request.preferred_language_from(available_languages)
    end
end
