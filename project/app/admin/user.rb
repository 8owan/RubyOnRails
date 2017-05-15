ActiveAdmin.register User do
	permit_params :username,:pic, :dob, :gender, :email, :password, :password_confirmation, :remember_me;
	
end