require "test_helper"

feature "Post::CreatePost" do
  scenario "Create New Post" do
    visit new_post_path
    fill_in 'Title', with: 'This is a brand new title'
    fill_in 'Body', with: 'This is a brand new body'
    click_button 'Create Post'
    page.must_have_content "This is a brand new title"
    page.must_have_content "This is a brand new body"
  end
end
