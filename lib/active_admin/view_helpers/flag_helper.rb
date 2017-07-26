require 'active_admin/view_helpers'

module ActiveAdmin
  module ViewHelpers
    module FlagHelper

      # Return an image tag with background of given locale
      def flag_icon(locale)
        content_tag :i, '', class: "flag-icon flag-icon-#{I18n.locale_country_code(locale:locale).downcase}", title: I18n.t("active_admin.globalize.language.#{locale}")
      end

    end

    # Register as ActiveAdmin view helper
    include FlagHelper
  end
end
