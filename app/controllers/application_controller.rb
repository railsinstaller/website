class ApplicationController < ActionController::Base
  protect_from_forgery
  AVAILABLE_LOCALES_HASH = {}
  before_filter :set_locale

  private
    def set_locale
      if params[:locale].present?
        set_i18n_locale params[:locale]
      else
        set_i18n_locale extract_locale_from_header || I18n.default_locale
        redirect_to :root
      end
    end

    def set_i18n_locale(locale)
      I18n.locale = locale
      Rails.application.routes.default_url_options[:locale] = I18n.locale
    end

    def extract_locale_from_header
      return nil unless accept_language = request.env['HTTP_ACCEPT_LANGUAGE']
      begin
        preferred_langs = accept_language.split(/,|;/).
          grep(/^([a-z]{2}(-[a-z]{2})?)$/).map(&:to_sym).map(&:downcase)
        match = preferred_langs & available_locales_hash.keys
        return available_locales_hash[match.first] if match.first
      rescue
        logger.error $!
      end
      return nil
    end

    def available_locales_hash
      return AVAILABLE_LOCALES_HASH if AVAILABLE_LOCALES_HASH.any?
      I18n.available_locales.each do |locale|
        AVAILABLE_LOCALES_HASH[locale.downcase] = locale
        AVAILABLE_LOCALES_HASH[locale[0..1].downcase.to_sym] = locale
      end
      return AVAILABLE_LOCALES_HASH
    end
end
