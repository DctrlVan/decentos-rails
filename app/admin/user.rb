ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name,
              :last_name,
              :email,
              :active,
              :invoicepref

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

sidebar 'Invoices', only: [:show, :edit] do
  link_to "Invoices", admin_user_btcinvoices_path(user)
end

form do |f|
  f.semantic_errors
  f.inputs do
    f.input :first_name
    f.input :last_name
    f.input :email
    f.input :active
    f.input :invoicepref, as: :select,
      collection: User.invoiceprefs.keys.map {|invoicepref| [invoicepref.titleize, invoicepref]}
  end
  f.actions
end

end
