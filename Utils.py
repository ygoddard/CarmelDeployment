import os
import git
import shutil
import stat
import win32com.client


from os.path import expanduser
from Constants import *
from git import Repo, Git





def createDirectory(dir):
    print "creating: "+ dir.split("/")[-1]+ " directory"
    if not os.path.exists(dir):
        os.makedirs(dir)

def createHirarchicDirectory(dirPath):
    dstDir = DeployDirPath
    for dir in dirPath.split('/'):
        dstDir = os.path.join(dstDir, dir).replace("\\", "/")
        createDirectory(dstDir)

# def gitCloneFromBranch(dist,reposotory,myBranch):
#     repo = Repo. clone_from(reposotory, dist )
#     repo.git.checkout(myBranch)
    
def gitClone(dist, reposotory):
    try:
        g = Git(dist).clone(reposotory)
    except:
        print "Check that youre computer connected to Elbit network!"


# try:
#     cloneCmd = "git clone --single-branch "+reposotory+" "+dist
# except:
#     print "Check that youre computer connected to Elbit network!"
#     # git.cmd.Git(dist).clone(reposotory)


def runQmake(proFilePath):

    os.system(qmakePath+" "+proFilePath+" -spec win32-msvc CONFIG+=release")

def build(buildDirPath):
    os.system(jomPath+" in " + buildDirPath)

def openVScmd():
    os.system(VScmd)

def runQmakeAndBuild(proFilePath, buildDirPath):
    createDirectory(buildDirPath)
    AA = 'cd ' + buildDirPath
    A = r'C:\"Program Files (x86)"\"Microsoft Visual Studio"\2017\Professional\VC\Auxiliary\Build\vcvarsall.bat' + " amd64"
    B = r'"C:\Qt\Qt5.10.0\5.10.0\msvc2017_64\bin\qmake.exe"' + " " + proFilePath + ' -spec win32-msvc CONFIG+=release'
    C = r'"C:\Qt\Qt5.10.0\Tools\QtCreator\bin\jom.exe"' + ' qmake_all'
    D = r'"C:\Qt\Qt5.10.0\Tools\QtCreator\bin\jom.exe"'
    os.system(A + ' && ' + AA + ' && ' + B + ' && ' + C + ' && ' + D)
    print "build finished succefully!"

def copyDir(src, dst):
    shutil.copytree(src, dst)


def removeDir(top):
    if not os.path.exists(top):
        return
    for root, dirs, files in os.walk(top, topdown=False):
        for name in files:
            filename = os.path.join(root, name)
            os.chmod(filename, stat.S_IWUSR)
            os.remove(filename)
        for name in dirs:
            os.rmdir(os.path.join(root, name))
    os.rmdir(top)

def copyFile(src, dst):
    shutil.copy2(src, dst)

def copyAllFilesInDir(src, dst, endsWith):
    src_files = os.listdir(src)
    for file_name in src_files:
        full_file_name = os.path.join(src, file_name).replace("\\","/")
        if (os.path.isfile(full_file_name)):
            if endsWith is None:
                shutil.copy(full_file_name, dst)
            else:
                if full_file_name.endswith(endsWith):
                    # print(full_file_name)
                    shutil.copy(full_file_name, dst)

def copyListOfFiles(src, dst, listOfFiles):
    for f in listOfFiles:
        if f.startswith("*"):
            copyAllFilesInDir(src, dst, f.split(".")[-1])
        else:
            copyFile(os.path.join(src, f).replace("\\","/"), dst)

def getConanDir():
    confFilePath = expanduser("~")+r'\.conan\conan.conf'
    with open(confFilePath) as fh:
        for line in fh:
            if line.startswith("path"):
                return line.replace('\n',' ' ).replace(' ','' ).split("=")[-1]

def getLastVer(path):
    return os.path.join(path, sorted(os.listdir(path))[-1]).replace("\\","/")

def getMatchingArchitectureDir(path, arch , build_type):
    for dir in os.listdir(path):
        hasArch = False
        hasBuildTypeProperty = False
        BuildTypeLine = None
        with open(os.path.join(path,dir,'conaninfo.txt').replace("\\","/")) as fh:
            for line in fh:
                if arch in line:
                    hasArch = True
                if 'build_type' in line:
                    hasBuildTypeProperty = True
                    BuildTypeLine = line
        if hasArch and hasBuildTypeProperty:
            if build_type in BuildTypeLine:
                return dir
        if (hasArch and not hasBuildTypeProperty):
            return dir

    print "There is no matching version of Gstreamer to your architectucre"

def getGstreamerLibPath():
    return os.path.join(getGstreamerArchPath(), r'lib',GstreamerVer).replace("\\","/")

def getArchPath(name, packagePath):
    ConanDir = getConanDir()
    gstDir = getLastVer(os.path.join(ConanDir,name).replace("\\","/"))
    pckgPath = os.path.join(gstDir, packagePath).replace("\\","/")
    return os.path.join(pckgPath,getMatchingArchitectureDir(pckgPath,Architecture,Build_Type)).replace("\\","/")

def getGstreamerArchPath():
    return getArchPath('GStreamer', r'Framework2\Dependencies\package')


def updateDllDirs(key, val):
    DllDirs[key]=val

def DllDirsAddNewDir(key, val, endsWith):
    DllDirs[key]=val
    DllFiles[key]=['*'+endsWith]

def sendMail(subject, body, address1, address2):
    olMailItem = 0x0
    obj = win32com.client.Dispatch("Outlook.Application")
    newMail = obj.CreateItem(olMailItem)
    newMail.Subject = subject
    newMail.Body = body
    newMail.To = address1
    newMail.CC = address2
    newMail.Send()
