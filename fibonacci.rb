# takes in n, and returns n integers of the fibonacci sequences
# eg. fib(3) => 0, 1, 1
# eg. fib(5) => 0, 1, 1, 2, 3

# Nonrecursive approach
def fibs(n)
  return 0 if n == 1
  seq = [0, 1]
  idx = 1 #2
  until seq.length >= n
  	seq << seq[idx-1] + seq[idx] 
  	idx += 1
  end
  seq
end

# first attempt at recursion
# def fibs_rec(n, results=[0,1]) # 3
#   if n == 2
#   	results
#   else
#     results << results[-2] + results[-1]
#   end
  
#   results
# end

# Most simpliest approach I came across
def fibs_rec number
  return [0,1] if number < 3
  sequence = fibs_rec (number - 1)
  sequence << sequence[-2] + sequence[-1]
end

# Interesting alternative approach
# def fibs_rec(n, results=[0,1])
#   return results[0] if n < 2
#   return results if results.length == n
#   fibs_rec(n, results << results[-1] + results[-2])
# end

