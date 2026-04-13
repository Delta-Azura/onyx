#!/bin/bash

# this function replaces package name to "match" with arch repos
getarchname() {
  if [ -z "$1" ]; then
    exit 1
  else
    package=$1
  fi

  case $package in

  # replace - to .
    autoconf2-13)
      archpackage="${package/-/.}";;
      xclock|xinit)
      	archpackage="xorg-${package}";;
      jinja2)
      	archpackage="python-jinja";;
      mpg)
      	archpackage="mpg123";;
      gnome-web)
      	archpackage=epiphany;;
      hatchling)
      	archpackage=python-hatchling;;
      gst-plugins-base)
      	archpackage=gst-plugins-base;;
      parse-yapp|xml-parser)
      	archpackage="perl-${package}";;
      twm|util-macros)
      	archpackage=xorg-${package};;
      gcr4)
      	archpackage=gcr-4;;
      pycairo|pyyaml)
      	archpackage="${package/py/python-}";;
      pygments|pathspec|lxml|wheel|hatch-fancy-pypi-readme|docutils|pluggy|attrs|trove-classifiers|flit-core|setuptools|packaging|editables)
      	archpackage="python-${package}";;
      libtasn)
      	archpackage=libtasn1;;
      markup-safe)
      	archpackage=python-markupsafe;;
      vulkan-loader)
      	archpackage=vulkan-tools;;
      libsoup)
      	archpackage=libsoup3;;
      libsoup2)
      	archpackage=libsoup;;
      setuptools_scm)
      	archpackage=python-setuptools-scm;;
      hatch_vcs)
      	archpackage=python-hatch-vcs;;
      xkeyboardconfig)
      	archpackage=xkeyboard-config;;
      libgweather)
      	archpackage=libgweather-4;;
      kernel)
      	archpackage=linux;;
    qca-qt)
      archpackage=qca;;
    qterminal)
      archpackage=$package;;
    qtermwidget)
      archpackage=$package;;
    qtcreator)
      archpackage=$package;;
    qt6*)
      archpackage=$package;;
    qt*)
      archpackage="${package/qt/qt5-}";;
    etcher)
      archpackage=balena-etcher;;
    dejavu-ttf)
      archpackage=ttf-dejavu;;
    apache-ant)
      archpackage=ant;;
    node)
      archpackage=nodejs;;
    python-xdg)
      archpackage=python-pyxdg;;
    thunderbird)
      archpackage=thunderbird-esr-bin;;
    xvid)
      archpackage=xvidcore;;
    xorg-lib*)
      archpackage="${package/xorg-/}";;
    xorg-xf*)
      archpackage="${package/xorg-/}";;
    xwayland)
      archpackage="xorg-${package}";;
    firefox)
      archpackage=firefox-esr;;
    ffmpeg)
      archpackage=ffmpeg4.4;;
    libreoffice)
      archpackage="libreoffice-fresh";;
    onlyoffice)
      archpackage="onlyoffice-bin";;
    #nextcloud et owncloud
    *cloud-cli)
      archpackage="${package/-cli/-client}";;
    openssh-server)
      archpackage="openssh";;
    webkitgtk3)
      archpackage=webkit2gtk;;
      webkitgtk4)
      	archpackage=webkitgtk;;
    sublime-text)
      archpackage=sublime-text-4;;
    notepad-next)
      archpackage=notepadnext;;
    openjdk)
      archpackage=java17-openjdk;;
    bind-utils)
      archpackage=bind;;
    ovmf)
      archpackage=edk2;;
    i3)
      archpackage=i3-wm;;

    # Cursors & GTK themes
    cursor-theme-vimix)
      archpackage=vimix-cursors;;
    icon-theme-faba)
      archpackage=faba-icon-theme-git;;
    icon-theme-faba-mono)
      archpackage=faba-mono-icons-git;;
    icon-theme-kora)
      archpackage=kora-icon-theme;;
    icon-theme-moka)
      archpackage=moka-icon-theme-git;;
    icon-theme-numix)
      archpackage=numix-icon-theme-git;;
    icon-theme-numix-circle)
      archpackage=numix-circle-icon-theme-git;;
    icon-theme-papirus)
      archpackage=papirus-icon-theme;;

    # LXDE
    lxde-*)
      if [[ $package == 'lxde-common' || $package == 'lxde-icon-theme' ]]; then
        archpackage=$package
      elif [[ $package == 'lxde-gpicview' ]]; then
        archpackage="${package/lxde-/}"
      else
        archpackage="${package/lxde-/lx}"
      fi
      ;;
    # MATE
    mate-lib*)
      archpackage="${package/mate-lib/libmate}";;

    # XFCE
    xfce4-*)
      if [[ $package == 'xfce4-garcon' ]]; then
        archpackage=${package/xfce4-/}
      elif [[ $package == 'xfce4-desktop' || $package == 'xfce4-burn' || $package == 'xfce4-conf' ]]; then
        archpackage=${package/xfce4-/xf}
      elif [[ $package == 'xfce4-libui' || $package == 'xfce4-libutil' ]]; then
        archpackage=${package/xfce4-lib/libxfce4}
      elif [[ $package == 'xfce4-wm' ]]; then
        archpackage='xfwm4'
      elif [[ $package == 'xfce4-elementary-icon-theme' ]]; then
        archpackage='elementary-xfce-icons'
      else
        archpackage=$package
      fi
      ;;

    # Cosmic
    cosmic-applibrary)
      archpackage="cosmic-app-library";;
      
    # KDE
    polkit-kde-agent-1)
      archpackage="${package/-1/}";;
    phonon-qt)
      archpackage="${package/-qt/}";;
    grantlee-qt)
      archpackage="${package/-qt/}";;

    # NOS
    chrome)
      archpackage='google-chrome';;
    brave-browser)
      archpackage='brave-bin';;
    element-desktop)
      archpackage='element.io';;
    teamviewer-15)
      archpackage='teamviewer';;
    telegram)
      archpackage="telegram-desktop";;
    
    sip)
      archpackage="sip4";;

    # GUI-EXTRA
    gtk-update-icon-cache)
      archpackage="gtk3";;
    libcurl-gnutls)
      archpackage="curl";;
    gtksharp2)
      archpackage="gtk-sharp-2";;
    perl-yapp)
      archpackage="perl-parse-yapp";;
    perl-pcsc)
      archpackage="pcsc-perl";;
    openssl-10)
      archpackage="openssl-1.0";;
    pygmentize)
      archpackage="python-pygments";;
    mygpoclient)
      archpackage="python-mygpoclient";;
    poppler*)
      archpackage="poppler";;
    rustc)
      archpackage="rust";;
    squashfs)
      archpackage="squashfs-tools";;
    inih|lrdf|yaml)
      archpackage="lib${package}";;
    libelf)
      archpackage="elfutils";;
    eigen3)
      archpackage="eigen";;
    fdk-aac)
      archpackage="fdkaac";;
    gdk-pixbuf|glib|openjpeg|freetype)
      archpackage="${package}2";;
    gtkmm|fuse|gtksourceview|gtkspell)
      archpackage="${package}3";;
    kerberos)
      archpackage="krb5";;
    mutagen)
      archpackage="python-mutagen";;
    net-tool-cvs)
      archpackage="net-tools";;
    newt)
      archpackage="libnewt";;
    aspell-dict)
      archpackage="aspell-fr";;
    libmpcdec)
      archpackage="musepack";;
    xapian)
      archpackage="xapian-core";;
    tidy-html5)
      archpackage="tidy";;
    vte)
      archpackage="vte3";;
    perl-glib)
      archpackage="glib-perl";;
    dbus-launch)
      archpackage="dbus";;
    transmission-qt|phonon-qt)
      archpackage="${package/-qt/}";;
    python-qt)
      archpackage="${package/python-/py}5";;
    python-dbus|python-dbus-data)
      archpackage="dbus-python";;
    freefont-ttf)
      archpackage="ttf-freefont";;
    xorg-term)
      archpackage="xterm";;
    xorg-font-alias)
      archpackage="xorg-fonts-alias";;
    xorg-encodings)
      archpackage="xorg-fonts-encodings";;
    lxde-gpicview)
      archpackage="gpicview";;
    python-parsing|python-curl)
      archpackage="${package/-/-py}";;
    python-tkinter)
      archpackage="python";;

    gtkmm2|graphite2|tracker2|tracker2-miners|python2-distutils-extra|\
    python2-evdev|python2-lxml|python2-ply|python2-pyparsing|\
    python2-simplejson|python2-six|python2-xdg)
     archpackage="${package/2/}";;

    oxygen-icons5)
     archpackage="${package/5/}";;

    xorg-fontconfig|xorg-pixman|xorg-xbitmaps|xorg-xtrans|xorg-luit|xorg-glu|xorg-xcursor-themes)
     archpackage="${package/xorg-/}";;

    sdl-*)
     archpackage="${package/sdl-/sdl2_}";;

    sdl1-*)
     archpackage="${package/sdl1-/sdl_}";;

    liba52)
     archpackage="a52dec";;

    live)
     archpackage="live-media";;

    libzeitgeist|libostree|librest)
     archpackage="${package/lib/}";;

    xorg-libxscrnsaver)
     archpackage="libxss";;

    xorg-lib*|xorg-xf86*)
     archpackage="${package/xorg-/}";;

    libindicator-gtk3|oxygen-gtk3)
     archpackage="${package/-gtk3/}";;

    libfm-extra)
     archpackage="libfm";;

    mate-libkbd|mate-libmixer|mate-libweather)
     archpackage="${package/mate-lib/libmate}";;

    lxde-randr|lxde-terminal|lxde-panel|lxde-appearance|lxde-appearance-obconf|lxde-input|lxde-session|lxde-task)
     archpackage="${package/lxde-/lx}";;

    sg3-utils|wpa-supplicant|wireless-tools|lm-sensors)
     archpackage="${package/-/_}";;

    vid-stab)
     archpackage="${package/-/\.}";;

    lua54-lgi)
     archpackage="lgi";;

    skypeforlinux)
     archpackage="skypeforlinux-stable-bin";;

    gtk-theme-numix)
     archpackage="numix-gtk-theme";;
    icon-theme-arc)
     archpackage="arc-icon-theme";;
     
    *)
     archpackage="$package";;

  esac

  echo "$archpackage";
}
