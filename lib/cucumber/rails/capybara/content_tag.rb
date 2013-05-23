module Cucumber
  module Rails
    module Capybara
      # This module is for selecting by rails dom_id when using content_tag
      module ContentTag
        include ActionController::RecordIdentifier

        def content_tag_for(object, prefix=nil)
          find("##{dom_id(object, prefix)}")
        end
      end
    end
  end
end

World(::Cucumber::Rails::Capybara::ContentTag)
