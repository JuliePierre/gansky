ActiveAdmin.register Flat do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :address, :description, :nb_rooms, :price_per_room, :occupied
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
    f.inputs # Include the default inputs
    f.inputs "Facilities" do # Make a panel that holds inputs for lifestyles
      f.input :flat_facilities, as: :check_boxes, member_label: 'test', collection: Facility.all # Use formtastic to output my collection of checkboxes
    end
    f.actions # Include the default actions
  end

end
