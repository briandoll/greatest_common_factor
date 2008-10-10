module BrianDoll
  module GreatestCommonFactor

    # Factor this all-integer array by the GCF and return the result
    def factored_by_gcf(tolerance=0)
      gcf = greatest_common_factor(tolerance)
      unless gcf.nil?        
        self.collect { |e| e / gcf }
      else
        self
      end
    end

    # Determine the GCF across each element of this all-integer array
    def greatest_common_factor(tolerance=0)
      gcf = nil
      if all_ints? self
        dupe_self = self.dup
        dupe_self.delete(0)
        factor_sets = find_factor_sets(dupe_self, tolerance)
        ampersand_sets = ""      
        factor_sets.each_with_index do |set,i|
          if i == 0
            ampersand_sets << set.inspect
          else
            ampersand_sets << " & #{set.inspect}"
          end
        end      
        common_factors = eval(ampersand_sets)      
        gcf = common_factors.max
      end
      gcf
    end
    
    alias :gcf :greatest_common_factor
    
    # Can all the elements in this array be coerced to an Integer?
    def all_ints?(collection)
      collection.each do |n|
        begin
          Integer(n)
        rescue
          return false
        end        
      end
      true
    end

    private    
    
    # Find all factors for each element in the array
    def find_factor_sets(collection,tolerance)
      smallest_number = collection.sort.first
      collection.collect { |n| find_all_factors(n,smallest_number,tolerance) }
    end
    
    # Brute force approach to finding all factors for an integer
    def find_all_factors(n,starting_with=n,tolerance=0)
      n = n.to_i
      factor = (n.eql? starting_with) ? (n - 1) : starting_with
      factors = []
       while factor > 1
        if ((n % factor) <= tolerance)
          factors << factor
        end
        factor -= 1
      end
      factors
    end
    
  end
end

Array.send :include, BrianDoll::GreatestCommonFactor

