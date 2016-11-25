# coding: utf-8
require 'spec_helper'

# 引数渡す
shared_examples 'Login' do | success_or_faild |
  before do
    visit 'url指定する'
  end

  it 'Show login page' do
    expect(page).to have_title 'タイトル'
  end

  if success_or_faild then
    it 'Success' do
      fill_in 'id', with: 'your_id'
      fill_in 'password', with: 'password'
      click_on 'ログイン'
      expect(page).to have_content 'なんかメッセージ'
    end
  else
    it 'Faild' do
      fill_in 'id', with: 'your_id'
      fill_in 'password', with: 'password'
      click_on 'ログイン'
      expect(page).to have_content 'なんかメッセージ'
    end
  end
end
