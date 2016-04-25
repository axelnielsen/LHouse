class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #@user = User.new
  #logger.debug "New user post creación: #{@user.attributes.inspect}"   
  #@comunities=Community.where(:userpass => @user.communitypass).pluck(:id)
  #logger.debug "community: #{@community.inspect}"   
  #@user.community_id=@communities
  #@user.community_id=1
  #super
  #end

  # POST /resource
  def create
  #Recuperamos las varibles POST que vinieron desde la acción new.
   @email = params[:user][:email];
   @password = params[:user][:password];
   @communitypass = params[:user][:communitypass];
   @password_confirmation=params[:user][:password_confirmation];
   @community_id = Community.where("userpass = ?", params[:user][:communitypass]).pluck(:id).first;
  
  if @community_id == nil
     @community_id = Community.where("concierge = ?", params[:user][:communitypass]).pluck(:id).first;
      profile_id=2
  elsif  @community_id == nil
     @community_id = Community.where("adminpass = ?", params[:user][:communitypass]).pluck(:id).first;
     @profile_id=3
   else
     @profile_id=1
 end

   @firstName=params[:user][:firstName];
   @lastName=params[:user][:lastName];
   @phone=params[:user][:phone];
   @rut=params[:user][:rut];
   @apartment=params[:user][:apartment];
   @webSite=params[:user][:webSite];
   @contactPhone=params[:user][:contactPhone];
   @contactEmail=params[:user][:contactEmail];

   #Creamos el objeto con los valores a ingresar.
   @user = User.new({
      :email => @email,
      :password => @password,
      :communitypass => @communitypass,
      :community_id => @community_id,
      :firstName => @firstName,
      :lastName => @lastName,
      :phone => @phone,
      :rut => @rut,
      :apartment => @apartment,
      :webSite => @webSite,
      :contactPhone => @contactPhone,
      :contactPhone => @contactEmail,
      :profile_id => @profile_id
   }); 
   if @user.save()
      redirect_to startscreens_path, :notice => "Usuario creado exitosamente, favor confirmar email enviado";
   end
 # super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
