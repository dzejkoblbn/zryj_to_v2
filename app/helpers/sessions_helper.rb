module SessionsHelper
  def log_in(uzytkownik)
  session[:index] = uzytkownik.id
end
  def current_uzytkownik
    @current_uzytkownik ||= Uzytkownik.find_by(index: session[:index])
  end

def logged_in?
    !current_uzytkownik.nil?
end

def log_out
  session.delete(:index)
  @current_uzytkownik = nil
end

def destroy
  log_out
  redirect_to root_url
end

end
