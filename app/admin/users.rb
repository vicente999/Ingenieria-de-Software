ActiveAdmin.register User do

  permit_params :username, :email, :birthdate

end
