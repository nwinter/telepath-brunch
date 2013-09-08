#!/usr/bin/python

try:
    import Foundation
except Exception, e:
    print "Couldn't import PyObjC."
    exit()

print "Sending distributed notification."
nc = Foundation.NSDistributedNotificationCenter.defaultCenter()
nc.postNotificationName_object_userInfo_deliverImmediately_('net.nickwinter.Telepath.BrunchBuild', None, None, True)
