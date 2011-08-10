class ServerCreateForm < BaseActiveModel
  extend ActiveModel::Naming

  attr_accessor :name, :memo, :before_partial
  validates :name, :presence => true, :length => { :maximum => 20 }, :if => :first?
  validates :memo, :presence => true, :length => { :maximum => 20 }, :if => :second?
  validates :before_partial, :presence => true

  def first?
    step(before_partial) >= 1
  end

  def second?
    step(before_partial) >= 2
  end

end

