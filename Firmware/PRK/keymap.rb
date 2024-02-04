kbd = Keyboard.new

kbd.init_pins(
  [  4,  5,  6,  7,  8 ],
  [ 28, 27, 26, 15, 14 ]
)

encoder_1 = RotaryEncoder.new(0, 1)
encoder_1.clockwise do
  kbd.send_key :KC_DOWN
end
encoder_1.counterclockwise do
  kbd.send_key :KC_UP
end
kbd.append encoder_1

encoder_2 = RotaryEncoder.new(10, 11)
encoder_2.clockwise do
  kbd.send_key :KC_DOWN
end
encoder_2.counterclockwise do
  kbd.send_key :KC_UP
end
kbd.append encoder_2

#kbd.add_layer :default, %i[
#  KC_HOME  KC_END   KC_ESC     KC_ENT     KC_BSPC
#  KC_PGUP  KC_PGDN  KC_KP_7    KC_KP_8    KC_KP_9
#  _______  KC_MUTE  KC_KP_4    KC_KP_5    KC_KP_6
#  _______  _______  KC_KP_1    KC_KP_2    KC_KP_3
#  _______  _______  KC_KP_0    KC_KP_DOT  KC_KP_COMMA
#]
kbd.add_layer :default, %i[
  KC_A     KC_B     KC_C    KC_D    KC_E
  KC_F     KC_G     KC_H    KC_I    KC_J
  _______  KC_K     KC_L    KC_M    KC_N
  _______  _______  KC_O    KC_P    KC_Q
  _______  _______  KC_R    KC_S    KC_T
]

kbd.start!


