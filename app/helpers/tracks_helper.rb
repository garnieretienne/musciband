module TracksHelper

  # Print a timer from a time in millisecond (03:00)
  def timer(ms)
    s = (ms.to_i%60000)/1000
    m = ms.to_i/60000
    return "#{'%.02d'%m}:#{'%.02d'%s}"
  end
end
