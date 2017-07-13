module SetRegg
  extend ActiveSupport::Concern
  included do
    before_filter :set_regg
  end
  def set_regg
    session[:regg] = params[:q] if params[:q]
  end
end

  