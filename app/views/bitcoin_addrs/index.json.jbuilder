json.array!(@bitcoin_addrs) do |bitcoin_addr|
  json.extract! bitcoin_addr, :id, :address, :btcinvoice_id, :is_used
  json.url bitcoin_addr_url(bitcoin_addr, format: :json)
end
