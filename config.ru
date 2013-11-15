require "./lib/media/authorization"

Media::Authorization::Controllers::Base.children.each do |child|
  map "/%s" % child.namespace do
    run child
  end
end
