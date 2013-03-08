# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def is_triangle?(a, b, c)
  flag1 = (a + b) > c
  flag2 = (a + c) > b
  flag3 = (b + c) > a

  return flag1 && flag2 && flag3   
end

def triangle(a, b, c)
  # WRITE THIS CODE
  raise(TriangleError) unless is_triangle?(a, b, c)
  
  if a == b && b == c
  	return :equilateral
  end

  if a == b || b == c || a == c
  	return :isosceles
  end
 
  unless a == b || b == c || a == c
  	return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
