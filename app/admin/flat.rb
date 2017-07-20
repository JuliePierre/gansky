ActiveAdmin.register Flat do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

controller do
  def find_resource
    scoped_collection.friendly.find(params[:id])
  end
end

permit_params :name, :address, :zipcode, :city, :neighborhood, :description, :sub_description, :nb_rooms, :price_per_room, :occupied, :availability_date, :virtual_visit, :virtual_visit_trigger_picture, :map_picture, :cover_picture, :funky_picture, photos: [], facility_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs :except => [:availability_date] # Include the default inputs
    f.input :availability_date, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
    f.input :cover_picture, as: :formtastic_attachinary
    f.input :virtual_visit_trigger_picture, as: :formtastic_attachinary
    f.input :map_picture, as: :formtastic_attachinary
    f.input :funky_picture, as: :formtastic_attachinary
    f.input :photos, as: :formtastic_attachinary
    f.inputs "Facilities" do # Make a panel that holds inputs for lifestyles
      f.input :facilities, as: :check_boxes, collection: Facility.all.map{|facility| [facility.description, facility.id]} # Use formtastic to output my collection of checkboxes
    end
    f.actions # Include the default actions
  end

show do
    attributes_table do
      row :description
      row :sub_description
      row :address
      row :zipcode
      row :city
      row :neighborhood
      row :nb_rooms
      row :price_per_room
      row :occupied
      row :availability_date
      row :cover_picture
      row :virtual_visit_trigger_picture
      row :map_picture
      row :funky_picture
      row :photos
      row :virtual_visit
    end
  panel "Facilities" do
    table_for flat.facilities do
      column :description
    end
  end
  active_admin_comments
end
end
