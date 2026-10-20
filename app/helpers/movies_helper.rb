module MoviesHelper
  def sort_link(column, label)
    next_direction = @sort == column && @direction == "asc" ? "desc" : "asc"
    arrow = @sort == column ? (@direction == "asc" ? " ▲" : " ▼") : ""
    link_to "#{label}#{arrow}", movies_path(sort: column, direction: next_direction)
  end

  def sorted_column_class(column)
    @sort == column ? "sorted-#{@direction}" : nil
  end
end
