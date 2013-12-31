class CommandController < ApplicationController


  #protect_from_forgery except: :index
  before_filter :authenticate_user!
  before_filter :foo_function
  
  
   
  def foo_function
   if @myvar.nil?
     @myvar  = "foo"
     @myvar2 = "foo2"
   end
  end

  strLastCommand = String.new("...")

  def index
   #test = "DONALD"
   #session[:lastcommand] = "Donald"
   @myvar = "index"
  end

  def post
    #session[:lastcommand] = params[:strCommand] 
    @myvar = "post"
  end
  
  #def show
  #end

  def do_command
    
    @strLastCommand = params[:strCommand]
    @myvar2 = session[:lastcommand] 
    session[:lastcommand] = @strLastCommand
    @myvar = @strLastCommand
    # do whatever you want...
    #redirect_to :action => 'index'
    render "index"
  end

end
