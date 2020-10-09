# 偏差値プログラム

# 合計点数はこれで出せる(inject使用の場合)
Avarage = 310
# もう既に平均点と標準偏差が出ていると仮定
Stdevp = 8.9

points = [50, 60, 70, 70, 80]
sum = points.inject(0){ |result, n| result + n }

sum
# 合計は330点。仮にこの点数を取った人物をSとしてその偏差値は

deviation = (50 + 10 * (sum - Avarage) / 8.9).floor
#　偏差値が72と出る。

# 平均点と、個々の合計点と標準偏差が必要になる

# student1.偏差値計算メソッド　=> student1の偏差値