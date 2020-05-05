
class String
  def kebabize
    self.gsub(/(_|\s)/, '-')
  end
end