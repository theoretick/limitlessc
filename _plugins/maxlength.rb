#
#
#
  class String
    def maxlength(ceiling=80)
      in_string = self
      if in_string.length > ceiling
        # minus 3 for ellipsis
        out_string = in_string.slice(0..(ceiling-3))
        return out_string+'...'
      else
        return in_string
      end
    end
  end
