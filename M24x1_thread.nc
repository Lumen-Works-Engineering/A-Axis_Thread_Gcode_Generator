; A-Axis Thread G-code Generator
; Generated: 12/7/2025, 10:05:57 AM
;
; Thread: M24x1 RH
; Length: 20mm
; Target Depth: 0.58mm
; Passes: 4
; Z Reference: A-axis center

G21 G90          ; mm, absolute
G0 Z14.00 X0 A0

M3 S12000        ; Spindle on
G4 P2            ; Wait for spindle
M7               ; Mist on

; Pass 1 - Depth: 0.232mm
G0 X-2.00 A0
G0 Z11.768
G1 X20.00 A7920.0 F900
G1 Z14.00 A8010.0 F1800
G0 X-2.00 A0

; Pass 2 - Depth: 0.377mm
G0 X-2.00 A0
G0 Z11.623
G1 X20.00 A7920.0 F900
G1 Z14.00 A8010.0 F1800
G0 X-2.00 A0
M5               ; Spindle off for test fit
M9               ; Mist off
M0               ; PAUSE - Test fit threads, then resume
M3 S12000        ; Spindle back on
G4 P2            ; Wait for spindle
M7               ; Mist on

; Pass 3 - Depth: 0.493mm
G0 X-2.00 A0
G0 Z11.507
G1 X20.00 A7920.0 F900
G1 Z14.00 A8010.0 F1800
G0 X-2.00 A0
M5               ; Spindle off for test fit
M9               ; Mist off
M0               ; PAUSE - Test fit threads, then resume
M3 S12000        ; Spindle back on
G4 P2            ; Wait for spindle
M7               ; Mist on

; Pass 4 - Depth: 0.580mm
G0 X-2.00 A0
G0 Z11.420
G1 X20.00 A7920.0 F900
G1 Z14.00 A8010.0 F1800
G0 X-2.00 A0

G0 Z14.00       ; Final retract
G0 X0 A0         ; Return to start
M9               ; Mist off
M5               ; Spindle off
M30              ; Program end