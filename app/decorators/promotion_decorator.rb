class PromotionDecorator < Draper::Decorator
  delegate_all

  def approver_name
    approval.user.name.capitalize
  end

  def end_at
    start_at + days
  end

  def title
    "Promoção #{name}"
  end

  private
  def approval
    object.approval || NilApproval.new
  end

end
