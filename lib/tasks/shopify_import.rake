namespace :import do
  desc 'Import stuff from Shopify'

  task shopify_orders: :environment do
    import_shopify_orders
  end
end

def import_shopify_orders
  Rails.logger.info("Importing orders from Shopify")
  ShopifyImporter.import
end
