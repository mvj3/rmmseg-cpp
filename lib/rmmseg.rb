require File.join(File.dirname(__FILE__), 'rmmseg', 'dictionary')
require File.join(File.dirname(__FILE__), '..',
                  'ext', 'rmmseg', 'rmmseg')


def RMMSeg.segment text = ""
  return [] if text.strip.size.zero?

  ary = []
  algor = RMMSeg::Algorithm.new(text)
  loop do
    tok = algor.next_token
    break if tok.nil?
    ary << tok.text
  end

  ary
end
