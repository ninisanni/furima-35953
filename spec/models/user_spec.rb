require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規登録/ユーザー情報' do
    it 'ニックネームが必須であること' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'メールアドレスが必須であること' do
    end
    it 'メールアドレスが一意性であること' do
    end
    it'メールアドレスは、＠を含む必要があること' do
    end
    it 'パスワードが必須であること' do
    end
    it 'パスワードは、６文字以上での入力が必須であること' do
    end
    it 'パスワードは、半角英数混同での入力が必須であること' do
    end
    it 'パスワードとパスワード(確認)は、値の一致が必須であること' do
    end
  end

  describe '新規登録/本人情報確認' do
    it 'お名前(全角)は、名字と名前がそれぞれ必須であること' do
    end
    it 'お名前(全角)は、全角(漢字・ひらがな・カタカナ)での入力が必須であること' do
    end
    it 'お名前(全角)は、全角(カタカナ)での入力が必須であること' do
    end
    it '生年月日が必須であること' do
    end
  end

  describe 'トップページ' do
    it 'ログアウト状態の場合には、トップページ(商品一覧ページ)のヘッダーに、「新規登録」「ログイン」ボタンが表示されること' do
    end
    it 'ログイン状態の場合には、トップページ(商品一覧ページ)のヘッダーに、「ユーザーのニックネーム」と「ログアウト」ボタンが表示されること' do
    end
    it 'トップページ(商品一覧ページ)ヘッダーの、「新規登録」「ログイン」ボタンをクリックすると、各ページに遷移できること' do
    end
    it 'トップページ(商品一覧ページヘッダーの、「ログアウト」ボタンをクリックすると、ログアウトできること' do
    end
  end
end
