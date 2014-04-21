require 'spec_helper'

describe 'Uploading photos' do
  
  it 'displays the image on the post page' do
    visit '/posts/new'
    fill_in 'Description', with: 'My holiday pic'
    attach_file 'Picture', Rails.root.join('spec/images/image2.jpg')
    click_button 'Create Post'

    expect(page).to have_selector('img')
    # finds the element 'img' (we have only one)
    # gets its 'src' attribute (the long link to amazon)
    # checks that it matches a regex /image2/, which simply means
    # that it contains a substring 'image2'
    expect(find('img')['src']).to match(/image2/)
  end

end