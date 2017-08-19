class GreatestCommonFactor

  # Factor this all-integer array by the GCF and return the result
  def ratio(arr)
    gcf = greatest_common_factor(arr)
    unless gcf.nil?
      arr.collect { |e| e / gcf }
    else
      arr
    end
  end

  # Determine the GCF across each element of this all-integer array
  def greatest_common_factor(arr)
    gcf = nil
    sorted = arr.sort
    factor_sets = sorted.map { |n| find_all_factors(n) }

    common_factors = factor_sets.shift
    factor_sets.each do |set|
      common_factors &= set
    end

    common_factors.max
  end

  alias :gcf :greatest_common_factor

  # Brute force approach to finding all factors for an integer
  def find_all_factors(n,tolerance=0)
    n = n.to_i
    factor = n
    factors = []
    while factor > 0
      if ((n % factor) <= tolerance)
        factors << factor
      end
      factor -= 1
    end
    factors
  end

end
