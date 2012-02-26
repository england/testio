class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @user.is_admin = false
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to(:controller => "posts", :action => "index")
    else
      render :action => "register"
    end
#    if @user.save
#      session[:user_id] = @user.id
#      flash[:notice] = "User was successfully registered."
#      redirect_to(:controller => "posts", :action => "index")
#    else
#      render :action => "register"
#    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml { head :ok }
    end
  end

  def login
    @user = User.new
    if request.post?
      user = User.where("nickname = ? AND password = ?", params[:user][:nickname], params[:user][:password]).first
      if user
        session[:user_id] = user.id
        redirect_to root_url
      else
        flash[:error] = "Login failed"
      end
    end
  end


  def logout
    session[:user_id] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to root_url
  end

  def register
    @user = User.new
    if request.post?
      @user = User.new(params[:user])
      @user.is_admin = false
      if @user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to(:controller => "posts", :action => "index")
      else
        flash[:error] = "Login failed"
      end
    end
  end


end
