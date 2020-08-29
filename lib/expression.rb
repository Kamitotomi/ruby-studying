#正規表現を使って条件に当てはまる単語を抜き出してみる

I like Ruby.
Python is great language.
Java and JavaScript are different.

#上の文章からプログラミング言語を抜き出す
text = <<TEXT

I like Ruby.
Python is great language.
Java and JavaScript are different.
TEXT

text.scan(/[A-Z][A-Za-z]+/)

#文字列の返還

text = <<TEXT
私の郵便番号は1234567です。
俺の住所は6770056 兵庫県西脇市板波町1234だぜ。
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')
