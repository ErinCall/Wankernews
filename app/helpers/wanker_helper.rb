module WankerHelper
  def wankify(source, dest, plaintext)
    allcaps_source = source.upcase
    allcaps_dest = dest.upcase

    titlecase_source = source.capitalize
    titlecase_dest = dest.capitalize

    plaintext.gsub!(allcaps_source, allcaps_dest)
    plaintext.gsub!(titlecase_source, titlecase_dest)
    plaintext.gsub!(source, dest)

    plaintext
  end
end
