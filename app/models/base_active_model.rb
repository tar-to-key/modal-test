class BaseActiveModel
  include ActiveModel::Validations
  include ActiveModel::Conversion

  def persisted? ; false ; end

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value) rescue nil
    end
  end

  def set(attributes)
    initialize(attributes)
  end

  def step(step)
    case step
      when 'first'
      1
      when 'second'
      2
      when 'third'
      3
      when 'fourth'
      4
    end
  end
end
