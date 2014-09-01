ActiveAdmin.register Gallery do

 permit_params :id,:name,:movie_id,images_attributes: [:id,:photo, :_destroy]
 form do |f|
 f.inputs "Details" do
  f.input :name
  f.input :movie
  f.has_many :images, allow_destroy: true do |ff|
    ff.input :photo
   end
  end
   f.actions
end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
