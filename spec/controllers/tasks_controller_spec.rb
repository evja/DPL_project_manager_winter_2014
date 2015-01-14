require 'rails_helper'

RSpec.describe TasksController, :type => :controller do

  describe 'GET #new' do
    let(:project) { create(:project) }
    it 'renders successfully' do
      get :new, project_id: project.id
      expect(response).to have_http_status(:success)
    end
  end

end
