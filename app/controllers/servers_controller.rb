class ServersController < ApplicationController
  before_filter :params_set, :set_form

  def index
  end

  private
  def set_form
    @form = ServerCreateForm.new
  end
end
