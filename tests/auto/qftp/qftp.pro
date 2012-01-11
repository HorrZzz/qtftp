CONFIG += testcase
TARGET = tst_qftp
SOURCES  += tst_qftp.cpp


QT = core network testlib
LIBS += -lqftp
INCLUDEPATH += "../../include"

wince*: {
   addFiles.files = rfc3252.txt
   addFiles.path = .
   DEPLOYMENT += addFiles
   DEFINES += SRCDIR=\\\"\\\"
} else {
   DEFINES += SRCDIR=\\\"$$PWD/\\\"
}

CONFIG+=insignificant_test  # uses live qt-test-server, inherently unstable
