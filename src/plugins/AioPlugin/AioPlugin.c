/* Automatically generated by
	VMPluginCodeGenerator * VMMaker.oscog-EstebanLorenzano.768, VMMaker.oscog-eem.771 uuid: 1abbe9c7-13f0-4972-9779-d982037d7f17
   from
	UnixAioPlugin VMConstruction-Plugins-AioPlugin-EstebanLorenzano.13 uuid: a90bf916-de19-4735-b23d-2575da9cf52b
 */
static char __buildInfo[] = "UnixAioPlugin VMConstruction-Plugins-AioPlugin-EstebanLorenzano.13 uuid: a90bf916-de19-4735-b23d-2575da9cf52b " __DATE__ ;



#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#define FILEHANDLETYPE FILE *  /* the type of low level stream to be used in a struct SQFile */

/* Default EXPORT macro that does nothing (see comment in sq.h): */
#define EXPORT(returnType) returnType

/* Do not include the entire sq.h file but just those parts needed. */
/*  The virtual machine proxy definition */
#include "sqVirtualMachine.h"
/* Configuration options */
#include "sqConfig.h"
/* Platform specific definitions */
#include "sqPlatformSpecific.h"

#define true 1
#define false 0
#define null 0  /* using 'null' because nil is predefined in Think C */
#ifdef SQUEAK_BUILTIN_PLUGIN
#undef EXPORT
// was #undef EXPORT(returnType) but screws NorCroft cc
#define EXPORT(returnType) static returnType
#endif

#include "FilePlugin.h"
#include "SocketPlugin.h"
#include "config.h"
#ifndef SQAIO_H
# define SQAIO_H "sqaio.h"  /* aio.h has been renamed to sqaio.h */
#endif
#define SESSIONIDENTIFIERTYPE int
#include SQAIO_H
#include "sqMemoryAccess.h"


/*** Constants ***/


/*** Function Prototypes ***/
static void aioForwardwithDataandFlags(int fd, void *data, int flags);
static sqInt fileDescriptorFrom(sqInt aSQFileByteArray);
static FILEHANDLETYPE fileHandleFrom(sqInt sqFileStructByteArray);
static sqInt fileRecordSize(void);
static SQFile * fileValueOf(sqInt anSQFileRecord);
static VirtualMachine * getInterpreter(void);
EXPORT(const char*) getModuleName(void);
static sqInt getThisSessionIdentifier(void);
static sqInt halt(void);
EXPORT(sqInt) initialiseModule(void);
static sqInt isNonNullSQFile(sqInt objectPointer);
static sqInt isNullSQSocket(sqInt objectPointer);
static sqInt isSQFileObject(sqInt objectPointer);
static sqInt isSQSocketObject(sqInt objectPointer);
static sqInt isValidFileSession(sqInt objectPointer);
EXPORT(sqInt) moduleUnloaded(char *aModuleName);
static sqInt msg(char *s);
EXPORT(sqInt) primitiveAioDisable(void);
EXPORT(sqInt) primitiveAioEnable(void);
EXPORT(sqInt) primitiveAioHandle(void);
EXPORT(sqInt) primitiveAioSuspend(void);
EXPORT(sqInt) primitiveModuleName(void);
EXPORT(sqInt) primitiveOSFileHandle(void);
EXPORT(sqInt) primitiveOSSocketHandle(void);
EXPORT(sqInt) primitiveVersionString(void);
static SESSIONIDENTIFIERTYPE sessionIdentifierFromSqFile(SQFile *sqFile);
EXPORT(sqInt) setInterpreter(struct VirtualMachine*anInterpreter);
EXPORT(sqInt) shutdownModule(void);
static int socketDescriptorFrom(sqInt sqSocketOop);
static sqInt socketRecordSize(void);
static SQSocket * socketValueOf(sqInt anSQSocketRecord);
static sqInt stringFromCString(const char *aCString);
static char * versionString(void);


/*** Variables ***/

#if !defined(SQUEAK_BUILTIN_PLUGIN)
static void * (*arrayValueOf)(sqInt oop);
static sqInt (*byteSizeOf)(sqInt oop);
static sqInt (*classString)(void);
static sqInt (*getThisSessionID)(void);
static sqInt (*instantiateClassindexableSize)(sqInt classPointer, sqInt size);
static sqInt (*isBytes)(sqInt oop);
static sqInt (*nilObject)(void);
static sqInt (*pop)(sqInt nItems);
static sqInt (*popthenPush)(sqInt nItems, sqInt oop);
static sqInt (*primitiveFail)(void);
static sqInt (*pushInteger)(sqInt integerValue);
static sqInt (*signalSemaphoreWithIndex)(sqInt semaIndex);
static sqInt (*stackIntegerValue)(sqInt offset);
static sqInt (*stackObjectValue)(sqInt offset);
static sqInt (*stackValue)(sqInt offset);
static sqInt (*trueObject)(void);
#else /* !defined(SQUEAK_BUILTIN_PLUGIN) */
extern void * arrayValueOf(sqInt oop);
extern sqInt byteSizeOf(sqInt oop);
extern sqInt classString(void);
extern sqInt getThisSessionID(void);
extern sqInt instantiateClassindexableSize(sqInt classPointer, sqInt size);
extern sqInt isBytes(sqInt oop);
extern sqInt nilObject(void);
extern sqInt pop(sqInt nItems);
extern sqInt popthenPush(sqInt nItems, sqInt oop);
extern sqInt primitiveFail(void);
extern sqInt pushInteger(sqInt integerValue);
extern sqInt signalSemaphoreWithIndex(sqInt semaIndex);
extern sqInt stackIntegerValue(sqInt offset);
extern sqInt stackObjectValue(sqInt offset);
extern sqInt stackValue(sqInt offset);
extern sqInt trueObject(void);
extern
#endif
struct VirtualMachine* interpreterProxy;
static const char *moduleName =
#ifdef SQUEAK_BUILTIN_PLUGIN
	"AioPlugin VMConstruction-Plugins-AioPlugin-EstebanLorenzano.13 (i)"
#else
	"AioPlugin VMConstruction-Plugins-AioPlugin-EstebanLorenzano.13 (e)"
#endif
;



/*	This function is called to signal a Smalltalk Semaphore when an
	asynchronous event is
	detected. When translated to C, the name of this method is
	aioForwardwithDataandFlags. The event handler is set up by
	#primitiveAioHandle. 
 */

static void
aioForwardwithDataandFlags(int fd, void *data, int flags)
{
	// UnixAioPlugin>>#aioForward:withData:andFlags:
    int *pfd;
    sqInt semaIndex;

	pfd = data;
	semaIndex = *pfd;
	signalSemaphoreWithIndex(semaIndex);
}


/*	Answer the OS file descriptor, an integer value, from a SQFile data
	structure byte array, or answer -1 if unable to obtain the file descriptor
	(probably due
	to receiving an incorrect type of object as aFileHandle).
 */
/*	return type should be int, but skip the declaration to permit inlining */

static sqInt
fileDescriptorFrom(sqInt aSQFileByteArray)
{
	// AioPlugin>>#fileDescriptorFrom:
	if (!((((isBytes(aSQFileByteArray))
		 && ((byteSizeOf(aSQFileByteArray)) == (fileRecordSize())))
		 && ((getThisSessionID()) == (sessionIdentifierFromSqFile(arrayValueOf(aSQFileByteArray)))))
		 && (isNonNullSQFile(aSQFileByteArray)))) {
		return -1;
	}
	return fileno(fileHandleFrom(aSQFileByteArray));
}


/*	Answer a file handle from a SQFile structure. On most platforms, this
	will be a (FILE *). On Win32, it is a HANDLE. */

static FILEHANDLETYPE
fileHandleFrom(sqInt sqFileStructByteArray)
{
	// AioPlugin>>#fileHandleFrom:
    SQFile *sqFile;

	sqFile = arrayValueOf(sqFileStructByteArray);
	return sqFile->file;
}


/*	Answer the size of a SQFile data structure in bytes. */

static sqInt
fileRecordSize(void)
{
	// AioPlugin>>#fileRecordSize
	return sizeof(SQFile);
}


/*	Return a pointer to the first byte of of the SQFile data structure file
	record within
	anSQFileRecord, which is expected to be a ByteArray of size
	self>>fileRecordSize. 
 */

static SQFile *
fileValueOf(sqInt anSQFileRecord)
{
	// AioPlugin>>#fileValueOf:
	return arrayValueOf(anSQFileRecord);
}


/*	Note: This is coded so that plugins can be run from Squeak. */

static VirtualMachine *
getInterpreter(void)
{
	// InterpreterPlugin>>#getInterpreter
	return interpreterProxy;
}


/*	Note: This is hardcoded so it can be run from Squeak.
	The module name is used for validating a module *after*
	it is loaded to check if it does really contain the module
	we're thinking it contains. This is important! */

EXPORT(const char*)
getModuleName(void)
{
	// InterpreterPlugin>>#getModuleName
	return moduleName;
}

static sqInt
getThisSessionIdentifier(void)
{
	// AioPlugin>>#getThisSessionIdentifier
	return getThisSessionID();
}

static sqInt
halt(void)
{
	// InterpreterPlugin>>#halt
	;
	return 0;
}

EXPORT(sqInt)
initialiseModule(void)
{
	// AioPlugin>>#initialiseModule
	return 1;
}


/*	Check for the common failure mode of a SQFile record with all zeros. */

static sqInt
isNonNullSQFile(sqInt objectPointer)
{
	// AioPlugin>>#isNonNullSQFile:
    sqInt idx;
    unsigned char *sqFileBytes;

	sqFileBytes = arrayValueOf(objectPointer);
	idx = 0;
	while (idx < (fileRecordSize())) {
		if ((sqFileBytes[idx]) != 0) {
			return 1;
		}
		idx += 1;
	}
	return 0;
}


/*	Check for the common failure mode of a SQSocket record with all zeros. */

static sqInt
isNullSQSocket(sqInt objectPointer)
{
	// AioPlugin>>#isNullSQSocket:
    sqInt idx;
    unsigned char *sqSocketBytes;

	sqSocketBytes = arrayValueOf(objectPointer);
	idx = 0;
	while (idx < (socketRecordSize())) {
		if ((sqSocketBytes[idx]) != 0) {
			return 0;
		}
		idx += 1;
	}
	return 1;
}


/*	Answer true if objectPointer appears to be a valid SQFile ByteArray.
	This check is appropriate if objectPointer has been passed as a parameter
	to a primitive, and is expected to represent a valid file reference. */

static sqInt
isSQFileObject(sqInt objectPointer)
{
	// AioPlugin>>#isSQFileObject:
	return (((isBytes(objectPointer))
	 && ((byteSizeOf(objectPointer)) == (fileRecordSize())))
	 && ((getThisSessionID()) == (sessionIdentifierFromSqFile(arrayValueOf(objectPointer)))))
	 && (isNonNullSQFile(objectPointer));
}


/*	Answer true if objectPointer appears to be a valid SQSocket ByteArray.
	This check
	is appropriate if objectPointer has been passed as a parameter to a
	primitive, and
	is expected to represent a valid socket reference.
 */

static sqInt
isSQSocketObject(sqInt objectPointer)
{
	// AioPlugin>>#isSQSocketObject:
	return ((isBytes(objectPointer))
	 && ((byteSizeOf(objectPointer)) == (socketRecordSize())))
	 && (!(isNullSQSocket(objectPointer)));
}


/*	Answer true if the file session matches the current interpreter session
	identifier. 
 */

static sqInt
isValidFileSession(sqInt objectPointer)
{
	// AioPlugin>>#isValidFileSession:
	return (getThisSessionID()) == (sessionIdentifierFromSqFile(arrayValueOf(objectPointer)));
}


/*	The module with the given name was just unloaded.
	Make sure we have no dangling references. */

EXPORT(sqInt)
moduleUnloaded(char *aModuleName)
{
	// AioPlugin>>#moduleUnloaded:
}

static sqInt
msg(char *s)
{
	// InterpreterPlugin>>#msg:
	fprintf(stderr, "\n%s: %s", moduleName, s);
	return 0;
}


/*	Definitively disable asynchronous event notification for a descriptor. The
	parameter is an OS level integer file descriptor. */

EXPORT(sqInt)
primitiveAioDisable(void)
{
	// UnixAioPlugin>>#primitiveAioDisable
    sqInt fd;

	if ((nilObject()) == (stackValue(0))) {
		return primitiveFail();
	}
	fd = stackIntegerValue(0);
	if (fd < 0) {
return primitiveFail();
	}
	aioDisable(fd);
	pop(2);
	pushInteger(fd);
}


/*	Enable asynchronous notification for a descriptor. The first parameter is
	an OS
	level integer file descriptor. The second parameter is the index of a
	Semaphore to
	be notified, and the third parameter is a flag indicating that descriptor
	represents an external object and should not be closed on termination of
	aio handling. Answer
	the semaphore index.
 */

EXPORT(sqInt)
primitiveAioEnable(void)
{
	// UnixAioPlugin>>#primitiveAioEnable
    static int eventSemaphoreIndices[FD_SETSIZE];
    sqInt externalObject;
    sqInt fd;
    sqInt flags;
    sqInt semaIndex;

	if ((nilObject()) == (stackValue(2))) {
		return primitiveFail();
	}
	fd = stackIntegerValue(2);
	if (fd < 0) {
return primitiveFail();
	}
	semaIndex = stackIntegerValue(1);
	eventSemaphoreIndices[semaIndex] = semaIndex;
	externalObject = stackObjectValue(0);
	if (externalObject == (trueObject())) {
		flags = AIO_EXT;
	}
	else {
flags = 0;
	}
	aioEnable(fd, &(eventSemaphoreIndices[semaIndex]), flags);
	pop(4);
	pushInteger(semaIndex);
}


/*	Handle asynchronous event notification for a descriptor. The first
	parameter is
	an OS level integer file descriptor. The remaining three parameters are
	Boolean flags representing the types of events for which notification is
	being requested:
	handle exceptions, handle for read, and handle for write.
	Flags are defined in the aio.h source as:
	AIO_X	(1<<0)	handle for exceptions
	AIO_R	(1<<1)	handle for read
	AIO_W	(1<<2)	handle for write */

EXPORT(sqInt)
primitiveAioHandle(void)
{
	// UnixAioPlugin>>#primitiveAioHandle
    sqInt exceptionWatch;
    sqInt fd;
    sqInt flags;
    sqInt readWatch;
    sqInt writeWatch;

	if ((nilObject()) == (stackValue(3))) {
		return primitiveFail();
	}
	fd = stackIntegerValue(3);
	if (fd < 0) {
return primitiveFail();
	}
	exceptionWatch = stackObjectValue(2);
	readWatch = stackObjectValue(1);
	writeWatch = stackObjectValue(0);
	flags = 0;
	if (exceptionWatch == (trueObject())) {
		flags = flags | (AIO_X);
	}
	if (readWatch == (trueObject())) {
		flags = flags | (AIO_R);
	}
	if (writeWatch == (trueObject())) {
		flags = flags | (AIO_W);
	}
	aioHandle(fd, aioForwardwithDataandFlags, flags);
	pop(5);
	pushInteger(flags);
}


/*	Temporarily suspend asynchronous event notification for a descriptor. The
	first parameter is an OS level integer file descriptor. The remaining
	three parameters
	are Boolean flags representing the types of events for which notification
	is being
	requested: handle exceptions, handle for read, and handle for write.
	Flags are defined in the aio.h source as:
	AIO_X	(1<<0)	handle for exceptions
	AIO_R	(1<<1)	handle for read
	AIO_W	(1<<2)	handle for write */

EXPORT(sqInt)
primitiveAioSuspend(void)
{
	// UnixAioPlugin>>#primitiveAioSuspend
    sqInt exceptionWatch;
    sqInt fd;
    sqInt flags;
    sqInt readWatch;
    sqInt writeWatch;

	if ((nilObject()) == (stackValue(3))) {
		return primitiveFail();
	}
	fd = stackIntegerValue(3);
	if (fd < 0) {
return primitiveFail();
	}
	exceptionWatch = stackObjectValue(2);
	readWatch = stackObjectValue(1);
	writeWatch = stackObjectValue(0);
	flags = 0;
	if (exceptionWatch == (trueObject())) {
		flags = flags | (AIO_X);
	}
	if (readWatch == (trueObject())) {
		flags = flags | (AIO_R);
	}
	if (writeWatch == (trueObject())) {
		flags = flags | (AIO_W);
	}
	aioSuspend(fd, flags);
	pop(5);
	pushInteger(flags);
}


/*	Answer a string containing the module name string for this plugin. */

EXPORT(sqInt)
primitiveModuleName(void)
{
	// AioPlugin>>#primitiveModuleName
	popthenPush(1, stringFromCString(getModuleName()));
}


/*	Take a struct SQFile from the stack, and answer the value of its Unix file
	number. 
 */

EXPORT(sqInt)
primitiveOSFileHandle(void)
{
	// UnixAioPlugin>>#primitiveOSFileHandle
    sqInt fileNo;
    sqInt sqFileOop;

	sqFileOop = stackValue(0);
	if (!((((isBytes(sqFileOop))
		 && ((byteSizeOf(sqFileOop)) == (fileRecordSize())))
		 && ((getThisSessionID()) == (sessionIdentifierFromSqFile(arrayValueOf(sqFileOop)))))
		 && (isNonNullSQFile(sqFileOop)))) {
		return primitiveFail();
	}
	/* begin fileDescriptorFrom: */
	if (!((((isBytes(sqFileOop))
		 && ((byteSizeOf(sqFileOop)) == (fileRecordSize())))
		 && ((getThisSessionID()) == (sessionIdentifierFromSqFile(arrayValueOf(sqFileOop)))))
		 && (isNonNullSQFile(sqFileOop)))) {
		fileNo = -1;
		goto l1;
	}
	fileNo = fileno(fileHandleFrom(sqFileOop));
l1:	/* end fileDescriptorFrom: */;
	pop(2);
	pushInteger(fileNo);
}


/*	Take a struct SQSocket from the stack, and answer the value of its Unix
	file number.
 */

EXPORT(sqInt)
primitiveOSSocketHandle(void)
{
	// UnixAioPlugin>>#primitiveOSSocketHandle
    int fileNo;
    sqInt sqSocketOop;

	sqSocketOop = stackValue(0);
	if (!(((isBytes(sqSocketOop))
		 && ((byteSizeOf(sqSocketOop)) == (socketRecordSize())))
		 && (!(isNullSQSocket(sqSocketOop))))) {
		return primitiveFail();
	}
	fileNo = socketDescriptorFrom(sqSocketOop);
	if (fileNo < 0) {
return primitiveFail();
	}
	pop(2);
	pushInteger(fileNo);
}


/*	Answer a string containing the version string for this plugin. */

EXPORT(sqInt)
primitiveVersionString(void)
{
	// AioPlugin>>#primitiveVersionString
	popthenPush(1, stringFromCString(versionString()));
}


/*	Answer the session identifier from a SQFile structure. For a valid file
	reference, this identifier will match the session identifier supplied by
	the interpreter. */

static SESSIONIDENTIFIERTYPE
sessionIdentifierFromSqFile(SQFile *sqFile)
{
	// AioPlugin>>#sessionIdentifierFromSqFile:
	return sqFile->sessionID;
}


/*	Note: This is coded so that it can be run in Squeak. */

EXPORT(sqInt)
setInterpreter(struct VirtualMachine*anInterpreter)
{
	// InterpreterPlugin>>#setInterpreter:
    sqInt ok;

	interpreterProxy = anInterpreter;
	ok = ((interpreterProxy->majorVersion()) == (VM_PROXY_MAJOR))
	 && ((interpreterProxy->minorVersion()) >= (VM_PROXY_MINOR));
	if (ok) {

#if !defined(SQUEAK_BUILTIN_PLUGIN)
		arrayValueOf = interpreterProxy->arrayValueOf;
		byteSizeOf = interpreterProxy->byteSizeOf;
		classString = interpreterProxy->classString;
		getThisSessionID = interpreterProxy->getThisSessionID;
		instantiateClassindexableSize = interpreterProxy->instantiateClassindexableSize;
		isBytes = interpreterProxy->isBytes;
		nilObject = interpreterProxy->nilObject;
		pop = interpreterProxy->pop;
		popthenPush = interpreterProxy->popthenPush;
		primitiveFail = interpreterProxy->primitiveFail;
		pushInteger = interpreterProxy->pushInteger;
		signalSemaphoreWithIndex = interpreterProxy->signalSemaphoreWithIndex;
		stackIntegerValue = interpreterProxy->stackIntegerValue;
		stackObjectValue = interpreterProxy->stackObjectValue;
		stackValue = interpreterProxy->stackValue;
		trueObject = interpreterProxy->trueObject;
#endif /* !defined(SQUEAK_BUILTIN_PLUGIN) */
	}
	return ok;
}

EXPORT(sqInt)
shutdownModule(void)
{
	// AioPlugin>>#shutdownModule
}


/*	Answer the OS file descriptor, an integer value, from a SQSocket data
	structure, or answer -1 if unable to obtain the file descriptor (probably
	due to receiving
	an incorrect type of object as aFileHandle).
	
	Warning: The first element of privateSocketStruct happens to be the Unix
	file number of the socket. See sqUnixSocket.c for the definition. This
	method takes
	advantage of this, and will break if anyone ever redefines the data
	structure. 
 */

static int
socketDescriptorFrom(sqInt sqSocketOop)
{
	// AioPlugin>>#socketDescriptorFrom:
    void *privateSocketStruct;
    SQSocket *sqSocket;

	/* begin socketValueOf: */
	sqSocket = arrayValueOf(sqSocketOop);
	privateSocketStruct = sqSocket->privateSocketPtr;
	if (privateSocketStruct == 0) {
return -1;
	}
	return * (int *) privateSocketStruct;
}


/*	Answer the size of a SQSocket data structure in bytes. */

static sqInt
socketRecordSize(void)
{
	// AioPlugin>>#socketRecordSize
	return sizeof(SQSocket);
}


/*	Return a pointer to the first byte of of the SQsocket data structure
	socket record within
	anSQSocketRecord, which is expected to be a ByteArray of size
	self>>socketRecordSize. 
 */

static SQSocket *
socketValueOf(sqInt anSQSocketRecord)
{
	// AioPlugin>>#socketValueOf:
	return arrayValueOf(anSQSocketRecord);
}


/*	Answer a new String copied from a null-terminated C string.
	Caution: This may invoke the garbage collector. */

static sqInt
stringFromCString(const char *aCString)
{
	// AioPlugin>>#stringFromCString:
    sqInt len;
    sqInt newString;

	len = strlen(aCString);
	newString = instantiateClassindexableSize(classString(), len);
	strncpy(arrayValueOf(newString), aCString, len);
	return newString;
}


/*	Answer a string containing the version string for this plugin. Handle MNU
	errors, which can occur if class InterpreterPlugin has been removed from
	the system.
	
	Important: When this method is changed, the class side method must also be
	changed to match.
 */
/*	2.0 supports 64bit code base */

static char *
versionString(void)
{
	// AioPlugin>>#versionString
    static char version[]= "2.2.5";

	return version;
}


#ifdef SQUEAK_BUILTIN_PLUGIN

void* AioPlugin_exports[][3] = {
	{"AioPlugin", "getModuleName", (void*)getModuleName},
	{"AioPlugin", "initialiseModule", (void*)initialiseModule},
	{"AioPlugin", "moduleUnloaded", (void*)moduleUnloaded},
	{"AioPlugin", "primitiveAioDisable\000\000", (void*)primitiveAioDisable},
	{"AioPlugin", "primitiveAioEnable\000\000", (void*)primitiveAioEnable},
	{"AioPlugin", "primitiveAioHandle\000\000", (void*)primitiveAioHandle},
	{"AioPlugin", "primitiveAioSuspend\000\000", (void*)primitiveAioSuspend},
	{"AioPlugin", "primitiveModuleName\000\377", (void*)primitiveModuleName},
	{"AioPlugin", "primitiveOSFileHandle\000\001", (void*)primitiveOSFileHandle},
	{"AioPlugin", "primitiveOSSocketHandle\000\001", (void*)primitiveOSSocketHandle},
	{"AioPlugin", "primitiveVersionString\000\377", (void*)primitiveVersionString},
	{"AioPlugin", "setInterpreter", (void*)setInterpreter},
	{"AioPlugin", "shutdownModule\000\377", (void*)shutdownModule},
	{NULL, NULL, NULL}
};

#else /* ifdef SQ_BUILTIN_PLUGIN */

signed char primitiveAioDisableAccessorDepth = 0;
signed char primitiveAioEnableAccessorDepth = 0;
signed char primitiveAioHandleAccessorDepth = 0;
signed char primitiveAioSuspendAccessorDepth = 0;
signed char primitiveOSFileHandleAccessorDepth = 1;
signed char primitiveOSSocketHandleAccessorDepth = 1;

#endif /* ifdef SQ_BUILTIN_PLUGIN */