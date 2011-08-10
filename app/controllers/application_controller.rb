class ApplicationController < ActionController::Base
  protect_from_forgery

  def params_set
    @params = params
  end

  def dialog
    form_name = @form.class.to_s.underscore
    if @params[form_name].presence
      @form.set(@params[form_name])

      unless @form.valid?
        mb = 'aaaaa'
      else
        mb = 'bbbbb'
      end
      #logger.debug(mb)
    end

    respond_to do |f|
      f.js { render :template => 'dialog' }
    end
  end

end
