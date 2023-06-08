# site-ffggrz

## Für Gera-Greiz Firmware Builds genutzte Branches:

- __stable:__ site configuration for stable firmware builds
- __beta:__ site configuration for beta firmware builds
- __master:__ site configuration for experimental firmware builds

[Downloads](https://github.com/ffggrz/site-ffggrz/releases) der Site-Configs.

Weitere Infos zur Site sind in der [Gluon-Doku](http://gluon.readthedocs.org/) unter 'Site' zu finden.

Ab den Firmware-Versionen 1.4.0 bzw. 20230605-exp nutzen wir ein Standard-Gluon ohne eigene Anpassungen. Um eine Firmware für die Freifunk-Community Gera-Greiz zu erstellen, wird also das passende offizielle Gluon-Release (im folg. Beispiel v2022.1.4) ausgecheckt:
```
export RELEASE="v2022.1.4"
git clone https://github.com/freifunk-gluon/gluon.git gluon-$RELEASE -b $RELEASE
cd gluon-$RELEASE
```

Nun wird die zum zu erstellenden Release (im folg. Beispiel 1.4.0) der Freifunk-Community Gera-Greiz passende Site-Konfiguration aus diesem Repository ausgecheckt:
```
export GLUON_RELEASE="1.4.0"
git clone https://github.com/ffggrz/site-ffggrz.git site -b $GLUON_RELEASE
```

Anschließend wird die Firmware entsprechend der o.g. Guon-Doku erstellt (im Beispiel für den stable Branch):
```
export GLUON_LANGS="en de"
export GLUON_AUTOUPDATER_BRANCH=stable
export GLUON_AUTOUPDATER_ENABLED=1
make update
make -j4 GLUON_TARGET=ath79-generic
```

Im Beispiel wird die Firmware für alle Router des Targets "ath79-generic" erzeugt. Die möglichen targets kann man sich mit ```make list-targets``` anzeigen lassen.
