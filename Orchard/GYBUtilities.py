import csv
from enum import Enum
import os

class DeviceFamily(Enum):
	__order__ = 'IPHONE IPAD'
	IPHONE = "iPhone"
	IPAD = "iPad"
	IPOD = "iPod"

def DataPath(deviceFamily = DeviceFamily.IPHONE):
	if deviceFamily is DeviceFamily.IPHONE:
		return '../iPhones.tsv'
	elif deviceFamily is DeviceFamily.IPAD:
		return '../iPads.tsv'
	elif deviceFamily is DeviceFamily.IPOD:
		return '../iPods.tsv'

def longestEnumNameLength(deviceFamily = DeviceFamily.IPHONE):
	longest = 0
	with open(DataPath(deviceFamily)) as file:
		for row in csv.DictReader(file, delimiter='\t'):
			length = len(enumName(row["Name"]))
			if length > longest:
				longest = length
	return longest

iOSDeploymentTarget=os.environ['IPHONEOS_DEPLOYMENT_TARGET']

def versiontuple(v):
	return tuple(map(int, (v.split("."))))

def canSupport(x):
	return versiontuple(x) > versiontuple(iOSDeploymentTarget)

def needsAvailabilityCheck(x):
	return versiontuple(x) > versiontuple(iOSDeploymentTarget)

def enumName(x):
	return x.replace(" ", "").replace("(", "").replace(")","").replace(".", "_").replace("-", "").replace(",", "").replace("mini", "Mini").replace("Generation", "").replace("inch", "Inch").replace("2nd", "2").replace("3rd", "3").replace("4th", "4").replace("5th", "5").replace("6th", "6").replace("touch", "Touch")
