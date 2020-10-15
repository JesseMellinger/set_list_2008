require 'rails_helper'

RSpec.describe 'New Artist' do
  describe 'As a visitor' do
    describe 'When I visit the new artist form by clicking a link on the index' do
      xit 'I can create a new artist' do

      end

      it 'I can not create an artist without a name' do
        visit('/artists/new')

        click_on 'Create Artist'

        expect(page).to have_content("Artist not created: Required information missing.")
        expect(page).to have_button('Create Artist')
      end
    end
  end
end
