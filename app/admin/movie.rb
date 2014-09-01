ActiveAdmin.register Movie do
 permit_params :name,:avatar,:video,:description
	
	index do
		selectable_column
    id_column
    column 'Movie Name', :name
    column :avatar
    column :description
    column "avatar" do |movie|
    	link_to(image_tag(movie.avatar.url(:small), :height => '50'), admin_movie_path(movie))
  	end
    actions
  end
  
	filter :name
	filter :slno
	filter :avatar
	#Use the checkbox selectable option
	#filter :author, :as => :check_boxes
	#filter :genre, :as => :check_boxes	

	form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :avatar, :as => :file
      f.input :video, :as => :file
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
