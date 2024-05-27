module ReadRunsHelper
  def get_total_read_pages(read_run)
    read_run.read_sessions.map(&:read_pages).inject(0, :+)
  end

  def calculate_read_percentage(read_run, total_read_pages)
    pages = read_run.book.pages
    remaining_pages = pages - total_read_pages
    read_percentage = (100 * (pages - remaining_pages) / pages)

    read_percentage
  end
end
