class NilApproval
  def nil?
    true
  end

  def persisted?
    false
  end

  def user
    User.new(name: '----')
  end
end
