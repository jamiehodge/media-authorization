require_relative "base"

module Media
  module Authorization
    module Models
      class Authorization < Base
        attr_accessor :password

        class << self
          attr_accessor :directory
        end

        def validate
          super
          validates_presence :password
          errors.add(:person_id, "invalid credentials") unless authenticated?
        end

        private

        def authenticated?
          self.class.directory.authenticate(person_id, password)
        end
      end
    end
  end
end
