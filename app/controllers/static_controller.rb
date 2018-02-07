class StaticController < ApplicationController
  def index
    @restauracjas = Restauracja.all
    @uzytkowniks = Uzytkownik.all
  end
end
