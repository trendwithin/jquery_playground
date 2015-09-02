require "test_helper"

feature "Comment::CreateComment" do
  before do
    @post = posts(:one)
  end
  scenario "the test is sound" do
    visit post_path(@post)
    page.must_have_content "MyString"
    fill_in 'Body', with: 'A new comment'
    click_button 'Create Comment'
    save_and_open_page
  end
end
