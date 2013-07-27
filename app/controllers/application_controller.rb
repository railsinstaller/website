class ApplicationController < ActionController::Base
  protect_from_forgery
  AVAILABLE_LOCALES_HASH = {}
  before_filter :set_locale

  private
    def set_locale
      if params[:locale].present?
        I18n.locale = params[:locale]
      else
        I18n.locale = extract_locale_from_header || I18n.default_locale
        Rails.application.routes.default_url_options[:locale] = I18n.locale
        redirect_to :root
      end
      Rails.application.routes.default_url_options[:locale] = I18n.locale
    end

    def extract_locale_from_header
      return nil unless request.env['HTTP_ACCEPT_LANGUAGE']
      begin
        preferred_langs = request.env['HTTP_ACCEPT_LANGUAGE'].split(/,|;/).
        grep(/^([a-z]{2}(-[a-z]{2})?)$/).map(&:to_sym).map(&:downcase)
        match = preferred_langs & available_locales_hash.keys
        if match.first
          return available_locales_hash[match.first]
        end
      rescue
        logger.error $!
        return nil
      end
      return nil
    end

    def available_locales_hash
      return AVAILABLE_LOCALES_HASH if AVAILABLE_LOCALES_HASH.any?
      I18n.available_locales.each do |locale|
        AVAILABLE_LOCALES_HASH[locale.downcase] = locale
      end
      return AVAILABLE_LOCALES_HASH
    end

end
