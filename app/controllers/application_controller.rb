class ApplicationController < ActionController::Base
before_action :count

    def count
        @count = Cook.all.count
    end
end
