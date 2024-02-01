require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/invoice_temps", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # InvoiceTemp. As you add validations to InvoiceTemp, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      InvoiceTemp.create! valid_attributes
      get invoice_temps_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      invoice_temp = InvoiceTemp.create! valid_attributes
      get invoice_temp_url(invoice_temp)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_invoice_temp_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      invoice_temp = InvoiceTemp.create! valid_attributes
      get edit_invoice_temp_url(invoice_temp)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new InvoiceTemp" do
        expect {
          post invoice_temps_url, params: { invoice_temp: valid_attributes }
        }.to change(InvoiceTemp, :count).by(1)
      end

      it "redirects to the created invoice_temp" do
        post invoice_temps_url, params: { invoice_temp: valid_attributes }
        expect(response).to redirect_to(invoice_temp_url(InvoiceTemp.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new InvoiceTemp" do
        expect {
          post invoice_temps_url, params: { invoice_temp: invalid_attributes }
        }.to change(InvoiceTemp, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post invoice_temps_url, params: { invoice_temp: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested invoice_temp" do
        invoice_temp = InvoiceTemp.create! valid_attributes
        patch invoice_temp_url(invoice_temp), params: { invoice_temp: new_attributes }
        invoice_temp.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the invoice_temp" do
        invoice_temp = InvoiceTemp.create! valid_attributes
        patch invoice_temp_url(invoice_temp), params: { invoice_temp: new_attributes }
        invoice_temp.reload
        expect(response).to redirect_to(invoice_temp_url(invoice_temp))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        invoice_temp = InvoiceTemp.create! valid_attributes
        patch invoice_temp_url(invoice_temp), params: { invoice_temp: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested invoice_temp" do
      invoice_temp = InvoiceTemp.create! valid_attributes
      expect {
        delete invoice_temp_url(invoice_temp)
      }.to change(InvoiceTemp, :count).by(-1)
    end

    it "redirects to the invoice_temps list" do
      invoice_temp = InvoiceTemp.create! valid_attributes
      delete invoice_temp_url(invoice_temp)
      expect(response).to redirect_to(invoice_temps_url)
    end
  end
end