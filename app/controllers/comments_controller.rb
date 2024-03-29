class CommentsController < ApplicationController

  before_filter :require_login, :only => [:create]
  before_filter :require_admin, :except => [:create]

  # GET /comments
  # GET /comments.xml
  def index
    @comments = Comment.all(:order => "created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @comments }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  def create
    params[:comment][:post_id] = params[:post_id]
    params[:comment][:user_id] = session[:user_id]
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html {
          render :partial => "posts/comment",
                 :locals => {:comment => @comment},
                 :layout => false,
                 :status => :created
        }
      else
        format.html {
          render :json => @comment.errors,
                 :status => :unprocessable_entity
        }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(comments_path, :notice => 'Comment was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml { head :ok }
    end
  end
end
