class Towers

    attr_accessor :stack
    def initialize
        @stack = [[1,2,3],[],[]]
    end

    def move(start_stack, end_stack)
        raise "the stack is empty" if @stack[start_stack].empty?
       
        if  !@stack[end_stack].empty? && @stack[end_stack].first < @stack[start_stack].first
            raise "cannot place on a smaller piece" 
        end 
        ele = @stack[start_stack].shift 
        @stack[end_stack].unshift(ele)
    end
end