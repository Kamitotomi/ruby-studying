class Tempo
	include Comparable

	attr_reader :bpm

	# bpmは音楽の速さ

	def initialize(bpm)
		@bpm = bpm
	end
	# <=>はcomparableモジュールで使われる演算子
	def <=>(other)
		if other.is_a?(Tempo)
			# bpm動詞の比較
			bpm <=> other.bpm
		else
			nil
		end
	end

	def inspect
		"#{bpm}bpm"
	end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

t_120
t_180

t_120 > t_180

tempos = [Tempo.new(160), Tempo.new(50), Tempo.new(200)]
tempos.sort


