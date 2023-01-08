require 'rails_helper'

RSpec.describe 'V1::BiometricsController', type: :request do
  describe 'GET /users' do
    let!(:patient) { create(:patient) }
    let!(:biometric) { create(:biometric, patient_id: patient.id, data: { weight: 10, blood_type: "A" }.to_json) }
    subject! { get v1_biometrics_path }
    
    specify do
      expect(response).to be_success
      expect(response).to match_response_schema('biometrics/data')
    end
  end
end