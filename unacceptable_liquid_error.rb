class UnacceptableLiquidError < StandardError
  attr_reader :obj

  def initialize(obj)
    @obj = obj
  end
end

class Vessel
  def pour_out
    liquid = @liquid
    @liquid = nil
    liquid
  end

  def pour_in(liquid)
    if liquid.to_s == acceptance
      @liquid = liquid
    else
      raise UnacceptableLiquidError.new(liquid), "unacceptable!!!!!!"
    end
  end

  def acceptance
    raise NotImplementedError.new, "#acceptance is not implemented!"
  end
end

class Teapot < Vessel
  def initialize(liquid)
    pour_in(liquid)
  end

  def acceptance
    "tea"
  end
end

class Decanter < Vessel
  def initialize(liquid)
    pour_in(liquid)
  end

  def acceptance
    "wine"
  end
end

class Kettle < Vessel
  def initialize(liquid)
    pour_in(liquid)
  end

  def acceptance
    "water"
  end
end

