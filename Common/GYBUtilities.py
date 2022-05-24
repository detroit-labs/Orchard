import csv
from enum import Enum
import os

class OSFamily(Enum):
	IOS = "iOS"
	WATCHOS = "watchOS"
	TVOS = "tvOS"

class iOSDeviceFamily(Enum):
	IPHONE = "iPhone"
	IPAD = "iPad"
	IPOD = "iPod"

class watchOSDeviceFamily(Enum):
	WATCH = "Watch"

class tvOSDeviceFamily(Enum):
	TV = "AppleTV"

def DataPath(deviceFamily = Enum):
	if deviceFamily is iOSDeviceFamily.IPHONE:
		return '../../Data/iPhones.tsv'
	elif deviceFamily is iOSDeviceFamily.IPAD:
		return '../../Data/iPads.tsv'
	elif deviceFamily is iOSDeviceFamily.IPOD:
		return '../../Data/iPods.tsv'
	elif deviceFamily is watchOSDeviceFamily.WATCH:
		return '../../Data/Watches.tsv'
	elif deviceFamily is tvOSDeviceFamily.TV:
		return '../../Data/TVs.tsv'

def longestEnumNameLength(deviceFamily = iOSDeviceFamily.IPHONE):
	longest = 0
	with open(DataPath(deviceFamily)) as file:
		for row in csv.DictReader(file, delimiter='\t'):
			length = len(enumName(row["Name"]))
			if length > longest:
				longest = length
	return longest

iOSDeploymentTarget=os.getenv('IPHONEOS_DEPLOYMENT_TARGET', '9.0')
watchOSDeploymentTarget=os.getenv('WATCHOS_DEPLOYMENT_TARGET', '2.0')
tvOSDeploymentTarget=os.getenv('TVOS_DEPLOYMENT_TARGET', '9.0')

def versiontuple(v):
	return tuple(map(int, v.split('.')))

def versiontupleAdd(u, v):
	return tuple(x + y for x, y in zip(versiontuple(u), versiontuple(v)))

def versiontupleToString(v):
	return ".".join(map(str, v))

def canSupport(version, os = OSFamily.IOS):
	minimum = versiontuple(iOSDeploymentTarget)

	if os == OSFamily.WATCHOS:
		minimum = versiontuple(watchOSDeploymentTarget)
	elif os == OSFamily.TVOS:
		minimum = versiontuple(tvOSDeploymentTarget)

	return versiontuple(version) > minimum

def needsAvailabilityCheck(version, os = OSFamily.IOS):
	minimum = versiontuple(iOSDeploymentTarget)
	
	if os == OSFamily.WATCHOS:
		minimum = versiontuple(watchOSDeploymentTarget)
	elif os == OSFamily.TVOS:
		minimum = versiontuple(tvOSDeploymentTarget)
	
	return versiontuple(version) > minimum

def enumName(x):
	return (x
		.replace(" ", "")
		.replace("(", "").replace(")","")
		.replace(".", "_").replace("-", "").replace(",", "")
		.replace("mini", "Mini")
		.replace("Generation", "")
		.replace("inch", "Inch")
		.replace("1st", "").replace("2nd", "2").replace("3rd", "3")
		.replace("4th", "4").replace("5th", "5").replace("6th", "6")
		.replace("7th", "7").replace("8th", "8").replace("9th", "9")
		.replace("touch", "Touch")
	)
