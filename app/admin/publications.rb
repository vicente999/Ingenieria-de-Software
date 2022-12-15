ActiveAdmin.register Publication do

  permit_params :name, :rating, :description, :price, :category, :clasification, :disponibility, :tipo, :fecha, :avatar

end
