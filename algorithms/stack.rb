##
# Make the Stack class statically sized. push and pop should return nil if the stack
# is overflowing or underflowing respectively.
# Implement private predicate methods full? and empty? and public method size that returns the length of the stack,
# and look that returns the value on the top of the stack.
#
class Stack
  def initialize(size)
    @size = size
    @stack = Array.new(@size)
    @top = -1
  end

  def push(element)
    if element.nil? || full?
      puts 'The Stack is full or Element is not provided. Returning nil!'
      nil
    else
      @top +=1
      @stack[@top] = element
      self
    end
  end

  def pop
    if empty?
      puts 'The Stack is empty. Pop method returning nil!'
      nil
    else
      popper = @stack[@top]
      @stack[@top] = nil
      @top -=1
      puts "Taking out #{popper}"
      self
    end
  end

  def size
    @size
  end

  def look
    @stack[@top]
  end

  private
  def empty?
    @top == -1
  end

  def full?
    @top == (size - 1)
  end
end