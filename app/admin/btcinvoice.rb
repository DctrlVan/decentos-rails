ActiveAdmin.register Btcinvoice do

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
  belongs_to :user
  show do
    attributes_table do
      row :time_sent
      row :fiat_amt
      row :rate
      row :is_paid
      row :issuer_id do
        User.find(btcinvoice.issuer_id).full_name if btcinvoice.issuer_id
      end
    end
    table_for BitcoinAddr.where(btcinvoice_id: btcinvoice.id) do
      column :address
    end
    active_admin_comments
  end
end
