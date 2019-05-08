class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount 
  
  def initialize(sender, receiver, amount) 
    @sender = sender 
    @receiver = receiver 
    @status = "pending" 
    @amount = amount  
  end 
  
  def valid? 
    if self.valid? == true && BankAccount.valid? == true 
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
  end 
  
  def reverse_transfer 
  end 
end
