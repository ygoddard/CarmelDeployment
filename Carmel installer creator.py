import os, time
from file_builder import runFilesBuilderA,runFilesBuilderB
from Utils import removeDir, sendMail
import optparse
from shutil import move
from os import remove
from os import walk
from Constants import *
import threading


def updateInstallerVersion(source_file_path, version):

    files = []
    folders = []
    for (dirpath, dirnames, filenames) in walk(DeployDirPath):
        files.extend(filenames)
        folders.extend(dirnames)
        break

    deployList = []
    for folder in folders:
        deployList.append("Source: \"C:\\temp\Carmel\Deploy\\"+folder+"\*\"; DestDir: \"{app}\\"+folder+"\"; Flags: ignoreversion recursesubdirs createallsubdirs\n")
    for file in files:
        deployList.append( "Source: \"C:\\temp\Carmel\Deploy\\"+file+"\"; DestDir: \"{app}\"; Flags: ignoreversion\n")


    target_file_path = os.path.join(os.getcwd(), "code", "carmelBuilder.iss")
    if os.path.exists(target_file_path):
		os.remove(target_file_path)
    with open(target_file_path, 'w') as target_file:
        with open(source_file_path, 'r') as source_file:
            for line in source_file:
                if "#define MyAppVersion" in line:
                    target_file.write("#define MyAppVersion \""+version+"\"\n")
                if "[Files]" in line:
                    target_file.write("[Files]\n")
                    for file in deployList:
                        target_file.write(file)
                else:
                    target_file.write(line)

def updateGuiAppVersion(version):
    version_file_path = os.path.join(os.getcwd(), "Files", "Version.txt")
    if os.path.exists(version_file_path):
        remove(version_file_path)
    with open(version_file_path, 'w') as version_file:
        version_file.write("Project: Carmel\n")
        version_file.write("Version: "+version)
    version_file.close

def update_progress(progress):
    print '\r[{0}] {1}% '.format('#'*(progress/2), progress),

def runInnoSetupProgressBar():
    print "\nrunning Inno Setup:"
    innoSetupTimePeriod = 1.37 * 1000.0
    for i in range(100):
        time.sleep(innoSetupTimePeriod/1000.0)
        update_progress(i)
    print "\n"

def runInnoSetupCmd():
    os.system("start iscc /Q " + os.path.join(os.getcwd(), "code", "carmelBuilder.iss "))


############################### Main ###########################
carmelIssLocation = os.path.join(os.getcwd(), "code", "carmel.iss")

p = optparse.OptionParser()
p.add_option('--deleteDeployFolder', '-d', default="true")
p.add_option('--version', '-v')
p.add_option('--mail', '-m')
p.add_option('--msg', '-s')
options, arguments = p.parse_args()

initTime = time.clock()


#runFilesBuilderA()
runFilesBuilderB()
updateInstallerVersion(carmelIssLocation,options.version)
updateGuiAppVersion(options.version)

t1 = threading.Thread(target=runInnoSetupCmd)
t1.start()
t1.join()

runInnoSetupProgressBar()


if options.deleteDeployFolder == "true":
    removeDir(r'C:\temp\Carmel')


if options.mail == "true":
   subject = "Carmel: new version releasd"
   body = "Version: " + options.version+ "\nChanges:\n     " + options.msg+"\n\nLocation can be found in "+ r'\\esl\dfs\Carmel\Installer'
   Address1 = "tom.dayan@elbitsystems.com"
   Address2 = "gil.baruch@elbitsystems.com"
   sendMail(subject, body, Address1, Address2)


print "***************************************************"
print "Build finished successfully!"
print "Build took "+str((time.clock()-initTime)/60) +" minuts"
print "you can find the installer in "+os.getcwd()
print "***************************************************"