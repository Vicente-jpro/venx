class InvoiceTemp < ApplicationRecord
  belongs_to :profile
  belongs_to :cart_historic
 
  
  enum payment_method: { monetario: "MASCULINO", transferencia: "FEMININO", cartao_de_debito: "CARTAO_DEBITO"}
end
