class Swaggie::Dataset

  attr_reader :data

  def get_data
    @data = Swaggie::SQLStatement.all
  end

  def apply_filter(filter_class, opts={})
    filter = filter_class.new(@data, opts)
    @data = filter.filter
  end

end