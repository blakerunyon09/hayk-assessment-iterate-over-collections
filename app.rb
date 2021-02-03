class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

# 1. Generate a list of strings with the name and size (eg. "Alpha - 30")
# pp companies_list companies

def companies_list a
    a.map.with_index { |el , i|
        "#{i+1}. Name: #{el.name} - Size: #{el.size.to_s}"
    }
end

# 2. Combine all the sizes with reduce
# pp companies_total_size companies

def companies_total_size a
    a.inject(0) { |sum, el|
        sum + el.size
    }
end

# 3. Filter the list to show only companies over 100
# pp companies_larger_than_X(companies, 100)

def companies_larger_than_X a , size
    companies_list(
        a.select { |el|
        el.size > size
        }
    )
end

# 4. Find the company named "Beta"
# pp find_company_X companies, "Beta"

def find_company_X a , name
    companies_list( 
        a.select { |el|
           el.name == name
        }
    )
end

# 5. Find the largest company
# pp find_largest_company companies

def find_largest_company a
    s = 0
    a.map { |e|
        biggest = e.name if e.size > s
    }
    biggest
end

# 6. Sort the companies from largest to smallest
# pp sort_companies companies

def sort_companies a
    a.sort{ |a , b| b.size <=> a.size }
end

