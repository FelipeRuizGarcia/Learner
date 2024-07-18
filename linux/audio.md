## Alsa

```
aplay -l
alsamixer

```

## Pipewire

### Switch to PipeWire:

```
sudo dnf swap --allowerasing pulseaudio pipewire-pulseaudio
```

### Inspecting the PipeWire state

```
pw-cli info 0
```

### Wireplumber

https://pipewire.pages.freedesktop.org/wireplumber/
