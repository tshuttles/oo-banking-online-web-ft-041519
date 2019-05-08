class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount 
  
  def initialize(sender, receiver, amount) 
    @sender = sender 
    @receiver = receiver 
    @status = "pending" 
    @amount = amount  
  end 
  
  def valid? 
    sender.valid? && receiver.valid?
  end 
  
  def execute_transaction
    if @status == pending && sender.balance > amount 
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      
  end 
  
  def reverse_transfer 
  end 
end
