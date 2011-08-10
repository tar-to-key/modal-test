class JqueryUiController < ApplicationController
  before_filter :params_set

  def index
  end

  def factory
    respond_to do |f|
      f.js { render :template => 'jquery_ui/factory' }
    end
  end
end
