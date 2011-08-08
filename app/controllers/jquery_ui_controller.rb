class JqueryUiController < ApplicationController
  @ajax_count = 0

  def index
  end

  def first
    @ajax_count = Time.now
    logger.debug('test')
  end
end
