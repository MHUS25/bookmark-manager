feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/bookmarks')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end

  scenario 'A user can delete a bookmark with comments and tags' do
    bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')

    visit '/bookmarks'
    first('.bookmark').click_button 'Add Comment'
    fill_in 'comment', with: 'this is a test comment on the first bookmark'
    click_button 'Submit'

    first('.bookmark').click_button 'Add Tag'
    fill_in 'tag', with: 'testing'
    click_button 'Submit'

    first('.bookmark').click_button 'Delete'
    
    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end
