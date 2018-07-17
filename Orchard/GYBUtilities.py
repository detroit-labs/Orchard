import os

iPhonesPath='../iPhones.tsv'
iPadsPath='../iPads.tsv'
iOSDeploymentTarget=os.environ['IPHONEOS_DEPLOYMENT_TARGET']

def versiontuple(v):
	return tuple(map(int, (v.split("."))))

def canSupport(x):
	return versiontuple(x) > versiontuple(iOSDeploymentTarget)

def needsAvailabilityCheck(x):
	return versiontuple(x) > versiontuple(iOSDeploymentTarget)

def enumName(x):
	return x.replace(" ", "").replace("(", "").replace(")","").replace(".", "_").replace("-", "").replace(",", "").replace("mini", "Mini").replace("Generation", "").replace("inch", "Inch").replace("2nd", "2").replace("3rd", "3").replace("4th", "4").replace("5th", "5").replace("6th", "6")
