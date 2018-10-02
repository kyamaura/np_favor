class UsersController < ApplicationController
  def index
  end

  def login_form
  end

  def login
    @user = User.find_by(
      email: params[:email],
      password: params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログイン完了しました"
      redirect_to("/tasks/index")
    else
      # @error_messageを定義してください
      @error_message = "メールアドレスまたはパスワードが間違っています"

      # @emailと@passwordを定義してください
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name:"Champions-League.jpg",
      password: params[:password]
     )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/tasks/index")
    else
      render("users/new")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice] = "権限が必要です"
      redirect_to("/tasks/index")
    end
  end

  def index
    @users = User.all.order(id: "DESC")
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name =  params[:name]
    @user.email = params[:email]
    @user.image_name = "#{@user.id}.png"
    if params[:image]
     image = params[:image]
     File.binwrite("public/user_images/#{@user.image_name}", image.read)
    end

    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

end
