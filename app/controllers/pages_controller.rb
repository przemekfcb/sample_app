class PagesController < ApplicationController

def home
	  @titre = "Accueil"
  end
  
  def contact
	  @titre = "Contact"
  end
  
  def about
	  @titre = "A propos"
 end

end
