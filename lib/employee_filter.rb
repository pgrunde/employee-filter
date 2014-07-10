class EmployeeFilter

  def initialize(arr_o_hashes)
    @arr_o_hashes = arr_o_hashes
  end

  def started_before_2006
    @arr_o_hashes.select { |hash| hash[:start_date] < Date.new(2006) }
  end

  def all_with_start_date
    @arr_o_hashes.map do |hash|
      "#{hash[:first_name]} #{hash[:last_name]} (#{hash[:title]}) - #{hash[:start_date].month}/#{hash[:start_date].day}/#{hash[:start_date].year}"
    end
  end

end


