require_relative "base"

module Media
  module Authorization
    module Policies
      class Authorization < Base

        def fields
          %w(person_id)
        end
      end
    end
  end
end
