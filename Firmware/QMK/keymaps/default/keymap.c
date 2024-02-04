// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [0] = LAYOUT(
                     KC_ESC,  KC_ENT, KC_BSPC,
                      KC_P7,   KC_P8,   KC_P9,
     KC_A,    KC_B,   KC_P4,   KC_P5,   KC_P6,
     KC_C,    KC_D,   KC_P1,   KC_P2,   KC_P3,
              KC_E,   KC_P0, KC_PDOT, KC_PCMM
  )
};

