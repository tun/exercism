class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(':').last.strip
  end

  def log_level
    @log_level = @line[/\[(.*?)\]/, 1]
    @log_level.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
