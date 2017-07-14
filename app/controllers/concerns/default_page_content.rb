module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
    
  end
  def set_page_defaults
    @page_title = "DevcampPortfolio | My Portfolio Webstie"
    @seo_keywords = "Landon Graff portoflio"
  end
  
end