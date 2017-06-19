ActiveAdmin.register Flat do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :address, :description, :nb_rooms, :price_per_room, :occupied, facility_ids: []
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
    f.inputs # Include the default inputs
    f.inputs "Facilities" do # Make a panel that holds inputs for lifestyles
      f.input :facilities, as: :check_boxes, collection: Facility.all.map{|facility| [facility.description, facility.id]} # Use formtastic to output my collection of checkboxes
    end
    f.actions # Include the default actions
  end

show do
    attributes_table do
      row :description
      row :address
      row :nb_rooms
      row :price_per_room
      row :occupied
    end
  panel "Facilities" do
    table_for flat.facilities do
      column :description
    end
  end
  active_admin_comments
end
end
