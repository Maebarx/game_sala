extends Control

@onready var player = $"../../../player"
@onready var timer_count = $hud_margem/timer/timer as Label
@onready var point_counter = $hud_margem/pontos/pontos as Label

@onready var timer = $Timer as Timer 

signal  tempo_acabou()

var minutos = 0
var segundos = 0

@export_range(0,2) var min_padrao = 2
@export_range(0,59) var seg_padrao = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer_count.text = str("%02d" % min_padrao) + ":" + str("%02d" % seg_padrao)
	
	minutos = min_padrao
	segundos = seg_padrao
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if minutos == 0 && segundos == 0:
			emit_signal("tempo_acabou")
	point_counter.text = str("%03d" % Globals.pontos)






func _on_timer_timeout():
	if segundos == 0:
		if minutos >0:
			minutos -=1
			segundos = 60
	segundos -=1
	timer_count.text = str("%02d" % minutos) + ":" + str("%02d" % segundos)
