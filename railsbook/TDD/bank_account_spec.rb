
require "./bank_account"

RSpec.describe BankAccount do
  # 1. 在每一個測試之前，先實作一個 BankAccount by before 方法
  # 使用 before 方法後，以下的功能內都要注意同時改用實體變數 @account
  # before :each do
  #   @account = BankAccount.new(10)
  # end

  # 2. 在每一個測試之前，先實作一個 BankAccount by let 方法
  let(:account){BankAccount.new(10)}

  describe "存錢功能" do
    it "原本帳戶有 10 元，存入 5 元後，帳戶餘額變 15 元" do
      account.deposit 5
      expect(account.balance).to be 15
    end
    it "原本帳戶有 10 元，存入 -5 元後，帳戶餘額還是 10 元（不能存入小於等於零的金額）"do
      account.deposit -5
      expect(account.balance).to be 10
    end
  end

  describe "領錢功能" do
    it "原本帳戶有 10 元，領出 5 元後，帳戶餘額變 5 元" do
      amount = account.withdraw 5
      expect(amount).to be 5
      expect(account.balance).to be 5
    end
    it "原本帳戶有 10 元，試圖領出 20 元，帳戶餘額還是 10 元，但無法領出（餘額不足）" do
      amount = account.withdraw 20
      expect(amount).to be 0
      expect(account.balance).to be 10
    end

    it "原本帳戶有 10 元，領出 -5 元後，帳戶餘額還是 10元（不能領出小於或等於零的金額）" do
      amount = account.withdraw(-5)
      expect(amount).to be 0
      expect(account.balance).to be 10
    end
  end
end