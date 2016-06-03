json.array!(@btcinvoices) do |invoice|
  json.extract! invoice, :id, :rate, :time_sent, :is_paid, :fiat_amt, :user_id, :issuer_id
  json.url btcinvoice_url(invoice, format: :json)
end
