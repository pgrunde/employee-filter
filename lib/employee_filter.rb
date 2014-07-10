class EmployeeFilter

  def initialize(arr_o_hashes)
    @arr_o_hashes = arr_o_hashes
  end

  def started_before_2006
    yr_2006 = Date.new(2006)
    before_06 = @arr_o_hashes.select do |hash|
      hash[:start_date] < yr_2006
    end
  end

  def all_with_start_date
    # ex: ["Beaulah Thompson (Lead Security Facilitator) - 2/9/2005"]
    return_arr = []
    @arr_o_hashes.each do |hash|
      return_arr.push "#{hash[:first_name]} #{hash[:last_name]} (#{hash[:title]}) - #{hash[:start_date].month}/#{hash[:start_date].day}/#{hash[:start_date].year}"
    end
    return_arr
  end
end


