import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.SetWMName


main = do
  xmonad $ gnomeConfig {
    modMask = mod4Mask   -- Windows key
    , logHook = takeTopFocus >> setWMName "LG3D"
  }
