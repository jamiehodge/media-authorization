require "media/web"

module Media
  module Authorization
    module Controllers
      class Base < Web::Controllers::Base
        set(:root) { File.expand_path("../../", __FILE__) }
      end
    end
  end
end
