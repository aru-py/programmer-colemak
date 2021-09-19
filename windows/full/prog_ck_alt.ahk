; Programmer-Colemak layout for AutoHotkey (MS Windows)
; 2020-10-16, Aru Bhoop. Public domain.
; See http://www.autohotkey.com/ for more information

; For this to work you have to make sure that the US Colemak layout is installed,
; that is set as the default layout, and that it is set as the current layout.
; Otherwise some of the key mappings will be wrong.
;
; This is mainly useful for those who don't have privileges to install a new layout
; This doesn't support the international features of the Colemak layout.

#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.

; special keys

VKF6 & a::Send, [
VKF6 & r::Send, {{}
VKF6 & s:: Send, =
VKF6 & t::Send, (
VKF6 & g::Send, *
VKF6 & k::Send, -
VKF6 & n::Send, )
VKF6 & e::Send, _
VKF6 & i::Send, {}}
VKF6 & o::Send, ]