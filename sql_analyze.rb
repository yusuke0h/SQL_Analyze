require 'pp'

sql = open("sample.sql").read.strip.gsub("\n", " ")

select, from, where = sql.split(/SELECT|FROM|WHERE/).reject{ |e| e == "" }.map { |e| e.strip }

fields = select.split(",").map { |e| e.strip }
tables = from.split(",").map { |e| e.strip }
tmp_terms = where.split(/AND|OR/)
terms = []
next_flg = false
tmp_terms.each_with_index do |term, index|
  if term.include?("between")
    terms << [term.strip, tmp_terms[index + 1].strip].join(" AND ")
    next_flg = true
  else
    if next_flg
      next_flg = false
      next
    end
    terms << term.strip
  end
end

puts '===RAW SQL==='
puts open("sample.sql").read.strip

puts ""
puts '===SELECT fields==='
fields.each{|e| puts e}

puts ""
puts '===FROM tables==='
tables.each{|e| puts e}

puts ""
puts '===WHERE terms==='
terms.each{|e| puts e}