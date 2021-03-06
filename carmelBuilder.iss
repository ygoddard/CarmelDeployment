; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Carmel"
#define MyAppVersion "1.0.8"
#define MyAppPublisher "Elbit Systems, Inc."
#define MyAppURL "http://www.elbit.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{42A9AF57-2231-43BA-BECC-D9D1DED59C2B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL} 
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\Deploy\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=../..
OutputBaseFilename=Carmel setup v{#MyAppVersion}
SetupIconFile=..\icons\carmelon.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\temp\Carmel\Deploy\DebugEnvironment\*"; DestDir: "{app}\DebugEnvironment"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\elbit\*"; DestDir: "{app}\elbit"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\Files\*"; DestDir: "{app}\Files"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\imageformats\*"; DestDir: "{app}\imageformats"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\lib\*"; DestDir: "{app}\lib"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\Media\*"; DestDir: "{app}\Media"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\Qt\*"; DestDir: "{app}\Qt"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\QtGraphicalEffects\*"; DestDir: "{app}\QtGraphicalEffects"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\QtMultimedia\*"; DestDir: "{app}\QtMultimedia"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\QtQuick\*"; DestDir: "{app}\QtQuick"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\QtQuick.2\*"; DestDir: "{app}\QtQuick.2"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\QtSensors\*"; DestDir: "{app}\QtSensors"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\Schemes\*"; DestDir: "{app}\Schemes"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\temp\Carmel\Deploy\avcodec-56.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\avdevice-56.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\avfilter-5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\avformat-56.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\avutil-54.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\cg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\CommonCalc7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\common_files.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\FreeImage.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\FXPack1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\fxplugin.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\FXPlugin.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\gstreamer_video.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\liba52-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libass-5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libbz2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libcairo-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libcairo-gobject-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libcairo-script-interpreter-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libcharset-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libcroco-0.6-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libdca-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libdv-4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libdvdnav-4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libdvdread-4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libexpat-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libfaad-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libffi-7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libFLAC-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libfontconfig-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libfreetype-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libfribidi-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgcc_s_sjlj-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgdk_pixbuf-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libges-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgio-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libglib-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgmodule-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgmp-10.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgnutls-30.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgnutlsxx-28.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgobject-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgomp-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgraphene-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstadaptivedemux-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstallocators-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstapp-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstaudio-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbadallocators-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbadaudio-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbadbase-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbadvideo-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbase-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstbasecamerabinsrc-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstcodecparsers-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstcontroller-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstfft-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstgl-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstinsertbin-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstmpegts-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstnet-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstpbutils-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstphotography-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstplayer-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstreamer-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstriff-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstrtp-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstrtsp-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstrtspserver-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstsdp-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgsttag-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgsturidownloader-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstvalidate-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgstvideo-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libgthread-2.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libharfbuzz-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libhogweed-4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libiconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libintl-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libjpeg-8.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libjson-glib-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libkate-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libmms-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libmp3lame-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libmpeg2-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libmpeg2convert-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libmpg123-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libnettle-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libnice-10.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libogg-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\liboggkate-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libopencore-amrnb-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libopencore-amrwb-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libopenh264.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libopenjp2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libopus-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\liborc-0.4-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\liborc-test-0.4-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpango-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpangocairo-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpangoft2-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpangowin32-1.0-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpixman-1-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libpng16-16.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\librsvg-2-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\librtmp-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libsbc-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libSoundTouch-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libsoup-2.4-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libspandsp-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libspeex-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libsrtp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libstdc++-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtag.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtasn1-6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtheora-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtheoradec-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtheoraenc-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libtiff-5.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libturbojpeg-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvisual-0.4-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvlc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvlccore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvo-aacenc-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvorbis-0.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvorbisenc-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libvorbisfile-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libwavpack-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libx264-148.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libxml2-2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\libz.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\main.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\MapObject.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\MapObject.lib"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\maps_config.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\MapUtils7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McCommonUtils7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McEditMode7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\MCgdal201.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McGeographicCalculations7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McGeometricCalculations7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McGridCoordinateSystems7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McImagesCorrelator7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McIPPWrapper7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McMapProduction7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McMapTerrain7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McOsmPlugin7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McOverlayManager7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McPhotogrammetricCalc7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McSceneManager7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\McTechCommonUtils.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\memory_database.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\nddsc.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\nddscore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\nddscpp2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\OgreMain.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\OgreOggSound.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\OgreOverlay.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\OgreRTShaderSystem.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\OpenAL32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\oSceneLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\PagedGeometry.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\ParticleUniverse.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\plugins.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\plugins_min.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Plugin_CgProgramManager.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Plugin_ParticleFX.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\ports.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\postproc-53.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\protocols.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Core.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Gui.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Multimedia.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5MultimediaQuick.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Network.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Qml.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Quick.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5QuickControls2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5QuickTemplates2.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Sensors.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Svg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\Qt5Widgets.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\RenderSystem_GL.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\resources.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\resources_min.cfg"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\rti_license.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\shared_memory_video.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\swresample-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\swscale-3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\temp\Carmel\Deploy\VideoPublisher.exe"; DestDir: "{app}"; Flags: ignoreversion





; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

