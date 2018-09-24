class StoresController < ApplicationController
    before_action :require_log_in
    def index
        @store = Store.all
    end
end
