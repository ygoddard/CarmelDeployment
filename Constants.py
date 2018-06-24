tempDirectoryPath = r'C:\temp\Carmel'

reposotoriesToClone = [
    "http://tfs1:8080/tfs/LandC4ICollection/Carmel/_git/UI",
    "http://tfs1:8080/tfs/LandC4ICollection/Carmel/_git/C2"
]

qtProFilesPaths = [
    r'C:\temp\Carmel\C2\QmlWidgets.pro',
    r'C:\temp\Carmel\UI\Implementation\Workspace_Qt5\Carmel.pro'
]

buildDirPath = [
    r'C:\temp\Carmel\C2_build_release',
    r'C:\temp\Carmel\UI_build_release'
]

VScmd= r'C:\"Program Files (x86)"\"Microsoft Visual Studio"\2017\Professional\Common7\Tools\vsdevcmd\ext\vcvars.bat'
computerProcessor = ' amd64'
qmakePath = r'"C:\Qt\Qt5.10.0\5.10.0\msvc2017_64\bin\qmake.exe"'
jomPath = r'"C:\Qt\Qt5.10.0\Tools\QtCreator\bin\jom.exe"'

DeployDirPath = r'C:\temp\Carmel\Deploy'

Architecture = 'x86_64'
Build_Type = 'Release'

GstreamerVer = 'gstreamer-1.0'

QtDirs = {
    'QtSensors': ['declarative_sensors.dll'],
    'QtQuick.2':  ['qtquick2plugin.dll'],
    'QtMultimedia': ['declarative_multimedia.dll'],
    'QtGraphicalEffects': ['qtgraphicaleffectsplugin.dll'],
    'Qt\labs\handlers': ['handlersplugin.dll'],
    'QtQuick\Controls.2': ['qtquickcontrols2plugin.dll', 'Button.qml'],
    'QtQuick\Layouts': ['qquicklayoutsplugin.dll'],
    'QtQuick\Window.2': ['windowplugin.dll'],
	'QtQuick\Templates.2': ['qtquicktemplates2plugin.dll']
}



packagesPath={
    'DDS': ['DDS', r'Framework2\Dependencies\package', r'bin'],
    'DDS License': ['DDS', r'Framework2\Dependencies\package', r'lic'],
    'MapCore': ['MapCore', r'Elbit\dev\package', r'bin'],
    'MapCore Configuration': ['MapCore', r'Elbit\dev\package', r'config'],
    'Infrastructure': ['Infrastructure', r'Framework2\dev\package', r'bin']
}

DllDirs = {
    "Qt": r'C:\Qt\5.10.0\msvc2017_64\bin'
}

DllFiles = {
        "Qt": [
            'Qt5Core.dll',
            'Qt5Gui.dll',
            'Qt5Multimedia.dll',
            'Qt5MultimediaQuick.dll',
            'Qt5Network.dll',
            'Qt5Qml.dll',
            'Qt5Quick.dll',
            'Qt5QuickControls2.dll',
            'Qt5QuickTemplates2.dll',
            'Qt5Sensors.dll',
            'Qt5Svg.dll',
            'Qt5Widgets.dll'
            ],
        "MapCore": [
            'MapUtils7.dll',
            'McCommonUtils7.dll',
            'McEditMode7.dll',
            'MCgdal201.dll',
            'McGeometricCalculations7.dll',
            'McGeometricCalculations7.dll',
            'McGridCoordinateSystems7.dll',
            'McImagesCorrelator7.dll',
            'McIPPWrapper7.dll',
            'McMapProduction7.dll',
            'McMapTerrain7.dll',
            'McOsmPlugin7.dll',
            'McOverlayManager7.dll',
            'McPhotogrammetricCalc7.dll',
			'McGeographicCalculations7.dll',
            'McSceneManager7.dll',
            'McTechCommonUtils.dll',
            'OgreMain.dll',
            'OgreOggSound.dll',
            'OgreOverlay.dll',
            'OgreRTShaderSystem.dll',
            'OpenAL32.dll',
            'oSceneLib.dll', 
            'PagedGeometry.dll',
            'avcodec-56.dll',
            'CommonCalc7.dll',
            'avdevice-56.dll',
            'avfilter-5.dll',
            'avformat-56.dll',
            'avutil-54.dll',
            'cg.dll',
            'libintl-8.dll',
            'libvlc.dll',
            'libvlccore.dll',
            'postproc-53.dll',
            'swresample-1.dll',
            'swscale-3.dll',
            'CommonCalc7.dll',
            'FreeImage.dll',
            'FXPack1.dll',
            'FXPlugin.dll',
            'ParticleUniverse.dll',
            'Plugin_CgProgramManager.dll',
            'Plugin_ParticleFX.dll',
            'RenderSystem_GL.dll',
        ],
        "MapCore Configuration": [
            'fxplugin.cfg',
            'plugins.cfg',
            'plugins_min.cfg',
            'resources.cfg',
            'resources_min.cfg',
        ],
        "DDS": [
            'nddsc.dll',
            'nddscore.dll',
            'nddscpp2.dll',
        ],
        "DDS License": [
            'rti_license.dat',
        ],
        "Infrastructure": [
            'gstreamer_video.dll',
            'shared_memory_video.dll',
            'VideoPublisher.exe',
            'common_files.dll',
			'memory_database.dll',
			'ports.dll',
			'protocols.dll'
        ]

}

c4iCfgList = [
    'fxplugin.cfg',
    'plugins.cfg',
    'plugins_min.cfg',
    'resources.cfg',
    'resources_min.cfg'
]