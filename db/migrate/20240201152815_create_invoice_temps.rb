class CreateInvoiceTemps < ActiveRecord::Migration[7.0]
  def change
    create_table :invoice_temps do |t|
      t.string :cliente_name
      t.decimal :total
      t.string :value_delivered_customer
      t.decimal :customer_change
      t.string :payment_method
      t.string :code_cart
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
