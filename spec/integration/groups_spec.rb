require 'rails_helper'

RSpec.describe 'Groups', type: :system, js: true do
  describe 'index page' do
    before(:example) do
      @user = User.create(name: 'Bix Caleen', email: 'bix@caleen.com', password: '123456')
      sign_in @user

      @test_group = Group.create([
                     { author: @user, name: 'Entertainment',
                       icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg' },
                     { author: @user, name: 'Appliances', icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg' }
                   ])
  
      visit groups_path
    end

    it 'renders correct name of group' do
      expect(page).to have_content('Entertainment')
    end

    it 'shows the author' do
      expect(page).to have_content('Bix Caleen')
    end

    it 'has a link to create a new group' do
      expect(page).to have_link('New Category', href: new_group_path)
    end
  end
end
