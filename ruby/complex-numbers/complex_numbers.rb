class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary)
    @real, @imaginary = real.to_f, imaginary.to_f
  end

  def ==(other)
    real.round(10) == other.real.round(10) && imaginary.round(10) == other.imaginary.round(10)
  end

  def *(other)
    r = real * other.real - imaginary * other.imaginary
    i = imaginary * other.real + real * other.imaginary
    ComplexNumber.new(r, i)
  end

  def +(other)
    ComplexNumber.new(real + other.real, imaginary + other.imaginary)
  end

  def -(other)
    ComplexNumber.new(real - other.real, imaginary - other.imaginary)
  end

  def /(other)
    r = (real * other.real + imaginary * other.imaginary) / (other.real**2 + other.imaginary**2)
    i = (imaginary * other.real - real * other.imaginary) / (other.real**2 + other.imaginary**2)
    ComplexNumber.new(r, i)
  end

  def abs
    Math.sqrt(real**2 + imaginary**2)
  end

  def conjugate
    ComplexNumber.new(real, -imaginary)
  end

  def exp
    ComplexNumber.new(Math.exp(real) * Math.cos(imaginary), Math.exp(real) * Math.sin(imaginary))
  end
end
