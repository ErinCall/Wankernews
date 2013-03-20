module WankerHelper
  def wankify(source, dest, plaintext)
    allcaps_source = source.upcase
    allcaps_dest = dest.upcase

    titlecase_source = source.capitalize
    titlecase_dest = dest.capitalize

    plaintext.gsub!(Regexp.new(allcaps_source), allcaps_dest)
    plaintext.gsub!(Regexp.new(titlecase_source), titlecase_dest)
    plaintext.gsub!(Regexp.new(source), dest)

    plaintext
  end
end
