from Utils import *

def runFilesBuilderA():
	 # creating temp Dir
	ConanDir = getConanDir()
	removeDir(tempDirectoryPath)
	createDirectory(tempDirectoryPath)
	createDirectory(DeployDirPath)
	GstreamerDeployDir = os.path.join(DeployDirPath,r'lib',GstreamerVer)
	createDirectory(GstreamerDeployDir)


	# cloning / pulling reposotories
	for repo in reposotoriesToClone:
		gitClone(tempDirectoryPath, repo)

	# for i in range(len(qtProFilesPaths)):
def runFilesBuilderB():
	ConanDir = getConanDir()
	GstreamerDeployDir = os.path.join(DeployDirPath, r'lib', GstreamerVer)

	runQmakeAndBuild(qtProFilesPaths[0], buildDirPath[0])
	mapObjDllPath = r'C:\temp\Carmel\C2_build_release\MapObject\release\MapObject.dll'
	mapObjLibPath = r'C:\temp\Carmel\C2_build_release\MapObject\release\MapObject.lib'
	UiMainBuildPath = r'C:\temp\Carmel\UI_build_release\Main'
	createDirectory(UiMainBuildPath)
	copyFile(mapObjDllPath, UiMainBuildPath)
	copyFile(mapObjLibPath, UiMainBuildPath)
	runQmakeAndBuild(qtProFilesPaths[1], buildDirPath[1])



	copyAllFilesInDir(os.path.join(getGstreamerArchPath(),r'lib',GstreamerVer).replace("\\","/"), GstreamerDeployDir, ".dll")


	for pckgKey, pckgValue in packagesPath.iteritems():
		updateDllDirs(pckgKey,os.path.join(getArchPath(pckgValue[0], pckgValue[1]),pckgValue[2]).replace("\\","/"))



	for key, value in QtDirs.iteritems():
		srcDir = r'C:\Qt\5.10.0\msvc2017_64\qml'
		dstDir = DeployDirPath
		for dir in key.split('/'):
			srcDir = os.path.join(srcDir, dir).replace("\\", "/")
			dstDir = os.path.join(dstDir, dir).replace("\\", "/")
			createDirectory(dstDir)
		for file in value:
			srcFile = os.path.join(srcDir, file).replace("\\", "/")
			copyFile(srcFile, dstDir)
		qmldirFile = os.path.join(srcDir, 'qmldir').replace("\\", "/")
		copyFile(qmldirFile, dstDir)

	for key, value in DllFiles.iteritems():
		print "Copying: "+key+ " files"
		copyListOfFiles(DllDirs.get(key),DeployDirPath,value)

	DllDirsAddNewDir("Gstreamer",os.path.join(getGstreamerArchPath(),r'bin').replace("\\","/"),".dll")
	copyListOfFiles(DllDirs.get("Gstreamer"),DeployDirPath,DllFiles.get("Gstreamer"))

	MapCoreValue =  packagesPath.get('MapCore Configuration')
	mediaSrc = os.path.join(getArchPath(MapCoreValue[0], MapCoreValue[1]),MapCoreValue[2], 'Media').replace("\\","/")
	mediaDst = os.path.join(DeployDirPath, 'Media').replace("\\","/")
	copyDir(mediaSrc ,mediaDst)

	videoPath = r'elbit/qml/video'
	c4iPath =   r'elbit/qml/c4i'
	createHirarchicDirectory(videoPath)
	createHirarchicDirectory(c4iPath)
	deployVidDst = os.path.join(DeployDirPath, videoPath).replace("\\","/")
	deployC4IDst = os.path.join(DeployDirPath, c4iPath).replace("\\","/")
	videoPluginPath = r'C:\temp\Carmel\C2_build_release\VideoSubscriberQml\elbit\qml\video\VideoSubscriberQml.dll'
	videoPluginQmldirPath = r'C:\temp\Carmel\C2_build_release\VideoSubscriberQml\qmldir'
	C4IPluginPath = r'C:\temp\Carmel\C2_build_release\C4IQml\elbit\qml\c4i\C4IQml.dll'
	copyFile(videoPluginPath, deployVidDst)
	copyFile(videoPluginQmldirPath, deployVidDst)
	copyFile(C4IPluginPath, deployC4IDst)

	mapObjDllPath = r'C:\temp\Carmel\C2_build_release\MapObject\release\MapObject.dll'
	mapObjLibPath = r'C:\temp\Carmel\C2_build_release\MapObject\release\MapObject.lib'
	copyFile(mapObjDllPath, DeployDirPath)
	copyFile(mapObjLibPath, DeployDirPath)


# copyFile(videoPluginPath, deployVidDst)

	copyFile(r'C:\temp\Carmel\UI_build_release\Main\main.exe', DeployDirPath)
	copyFile(r'C:\temp\Carmel\C2\C4IQml\config\maps_config.xml', DeployDirPath)

	copyListOfFiles(r'C:\temp\Carmel\C2\C4IQml\config', DeployDirPath, c4iCfgList)
	path = os.path.join(DeployDirPath,r'elbit\qml\c4i','qmldir').replace("\\","/")
	f= open(path,"w+")
	f.write("module elbit.qml.c4i\nplugin C4IQml\n")

	platformPath = r'C:\temp\Carmel\Deploy\platforms'
	createDirectory(platformPath)
	copyFile(r'C:\Qt\5.10.0\msvc2017_64\plugins\platforms\qwindows.dll', platformPath)

	svgPath = r'C:\temp\Carmel\Deploy\imageformats'
	createDirectory(svgPath)
	copyFile( r'C:\Qt\Qt5.10.0\5.10.0\msvc2017_64\plugins\imageformats\qsvg.dll', svgPath)

	schemesSrcFolder = os.path.join(os.getcwd(), 'Schems').replace("\\","/")
	schemesDstFolder = os.path.join(DeployDirPath, 'Schems').replace("\\","/")
	copyDir(schemesSrcFolder ,schemesDstFolder)

	filesSrcFolder = os.path.join(os.getcwd(), 'Files').replace("\\","/")
	filesDstFolder = os.path.join(DeployDirPath, 'Files').replace("\\","/")
	copyDir(filesSrcFolder ,filesDstFolder)
	
	DebugEnvSrcFolder = os.path.join(os.getcwd(), 'DebugEnvironment').replace("\\","/")
	DebugEnvDstFolder = os.path.join(DeployDirPath, 'DebugEnvironment').replace("\\","/")
	copyDir(DebugEnvSrcFolder ,DebugEnvDstFolder)