# openSUSE-Tumbleweed环境搭建

# all files are included in suse.leap.preset folder
# just execute the bash script, and everything will be done

# install from repos
printf "softwares are being installed by repos\n"
sudo zypper in dia goldendict imagewriter kcolorchooser lyx marble plasma5-desktop-emojier scribus texstudio virtualbox cmake git patterns-kde-devel_qt5  libqt5-creator python3-numpy python3-scipy python3-matplotlib python3-seaborn java-1_8_0-openjdk-devel amarok audacity darktable gimp imagej imagemagick inkscape kdenlive krita rawtherapee smplayer vlc chromium filezilla teams teamviewer-suse
printf "repos' softwares are installed\n"


# install from rpms
printf "system are installing rpms\n"
cd rpms
sudo zypper in ./*.rpm
printf "rpms are installed\n"
cd ../


# install from tar_pkgs
printf "softwares from tar packages are being installed by repos\n"
cd tarpkgs
tar -zxvf ./*.tar.gz /home/oca/bin/bin-xi/
tar -zxvf ./*.tar.xz /home/oca/bin/bin-xi/
tar -zxvf ./*.tar.bz2 /home/oca/bin/bin-xi/
printf "softwares from tar packages are installed\n"
cd ../

# install from appimages
printf "appimages are being installed by repos\n"
cd appimage
cp ./*.AppImage /home/oca/bin/appimages
sudo chmod a+x /home/oca/bin/appimages/*.AppImage
printf "appimages are installed\n"
cd ../


# install fonts
cd font_script
printf "your curent dir is: "
pwd
printf "changing dir into fonts\n"
cd fonts
printf "copying fonts into system folder\n"
sudo cp *.ttf *.TTF *.ttc /usr/share/fonts/truetype/
printf "that's ok!\n"
cd ../

# multimedia codecs
sudo zypper ar -cfp 90 http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper in --allow-vendor-change ffmpeg lame gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-plugins-ugly-orig-addon gstreamer-plugins-libav libavdevice56 libavdevice58 libdvdcss2 vlc-codecs
sudo zypper up --from packman --allow-vendor-change

# other pkgs is in baks
# here is goldendict dicts, need to set it mannully.
printf "dict of goldendict are being installed by repos\n"
cd baks
unzip -n ./*.zip -d /home/oca/bin/bin-xi/
printf "dict of goldendict are installed\n"
cd ../

printf "everything's ok!\n"
