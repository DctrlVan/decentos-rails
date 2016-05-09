json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :rate, :time_sent, :is_paid, :fiat_amt, :recipient, :sender
  json.url invoice_url(invoice, format: :json)
end
