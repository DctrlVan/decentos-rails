ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name,
              :last_name,
              :email,
              :active,
              :password_digest,
              :is_admin,
              :last_sign_in,
              :current_session_start,
              :invited_by,
              :created_at,
              :updated_at,
              :invoicepref

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
