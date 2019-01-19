require 'rails_helper'

describe 'AuditLog Feature' do
	describe 'index' do
		before do
			admin_user = FactoryGirl.create(:admin_user)
      login_as(admin_user, :scope => :user)
      FactoryGirl.create(:audit_log)
		end

		it 'has an index page that can be reached' do
			visit audit_logs_path
			expect(page.status_code).to eq(200)
		end

		it 'renders audit log content' do
			visit audit_logs_path
			expect(page).to have_content(//)
		end

		xit 'cannot be accessed by non admin users' do
			reg_user = FactoryGirl.create(:user)
      login_as(reg_user, :scope => :user)
		end
	end
end
