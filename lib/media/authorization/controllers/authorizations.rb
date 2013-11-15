require_relative "base"

module Media
  module Authorization
    module Controllers
      class Authorizations < Base

        set(:model)  { Models::Authorization }
        set(:policy) { Policies::Authorization }

        index
        create
        show
        destroy

        after "/" do
          pass unless request.post? and status == 201
          session[:id] = item.id
        end

        after "/:id" do
          pass unless request.delete? and status == 204
          session[:id] = nil
        end
      end
    end
  end
end
