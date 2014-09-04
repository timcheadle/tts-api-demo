class ShopifyImporter
  def self.import
    orders = []
    ShopifyAPI::Base.site = ENV['SHOPIFY_API_BASE_URL']
    shopify_orders = ShopifyAPI::Order.find(:all)

    shopify_orders.each do |shopify_order|
      order = Order.find_or_initialize_by(name: shopify_order.name)
      order.update_attributes(
        customer: [shopify_order.customer.first_name, shopify_order.customer.last_name].join(' '),
        payment_status: shopify_order.financial_status,
        fulfillment_status: shopify_order.fulfillment_status,
        total_price: shopify_order.total_price,
      )
    end

    orders
  end
end
