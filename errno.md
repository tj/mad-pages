
# Errnos

  EPERM Operation not permitted.  An attempt was made to perform an oper-
        ation limited to processes with appropriate privileges or to the
        owner of a file or other resources.
  
  ENOENT No such file or directory.  A component of a specified pathname
        did not exist, or the pathname was an empty string.
  
  ESRCH No such process.  No process could be found corresponding to that
        specified by the given process ID.
  
  EINTR Interrupted function call.  An asynchronous signal (such as
        SIGINT or SIGQUIT) was caught by the process during the execution
        of an interruptible function.  If the signal handler performs a
        normal return, the interrupted function call will seem to have
        returned the error condition.
  
  EIO Input/output error.  Some physical input or output error occurred.
        This error will not be reported until a subsequent operation on
        the same file descriptor and may be lost (over written) by any
        subsequent errors.
  
  ENXIO Device not configured.  Input or output on a special file
        referred to a device that did not exist, or made a request beyond
        the limits of the device.  This error may also occur when, for
        example, a tape drive is not online or no disk pack is loaded on
        a drive.
  
  E2BIG Arg list too long.  The number of bytes used for the argument and
        environment list of the new process exceeded the current limit of
        2**18 bytes (ARG_MAX in <sys/syslimits.h>).
  
  ENOEXEC Exec format error.  A request was made to execute a file that,
        although it has the appropriate permissions, was not in the for-
        mat required for an executable file.
  
  EBADF Bad file descriptor.  A file descriptor argument was out of
        range, referred to no open file, had been revoked by revoke(2),
        or a read(2) (or write(2)) request was made to a file that was
        only open for writing (or reading).
  
  ECHILD No child processes.  A wait(2) or waitpid(2) function was exe-
       cuted by a process that had no existing or unwaited-for child
       processes.
  
  EDEADLK Resource deadlock avoided.  An attempt was made to lock a sys-
       tem resource that would have resulted in a deadlock situation.
  
  ENOMEM Cannot allocate memory.  The new process image required more
       memory than was allowed by the hardware or by system-imposed mem-
       ory management constraints.  A lack of swap space is normally
       temporary; however, a lack of core is not.  Soft limits may be
       increased to their corresponding hard limits.
  
  EACCES Permission denied.  An attempt was made to access a file in a
       way forbidden by its file access permissions.
  
  EFAULT Bad address.  The system detected an invalid address in
       attempting to use an argument of a call.  The reliable detection
       of this error cannot be guaranteed and when not detected may
       result in the generation of a signal, indicating an address vio-
       lation, which is sent to the process.
  
  ENOTBLK Block device required.  A block device operation was attempted
       on a non-block device or file.
  
  EBUSY Resource busy.  An attempt to use a system resource which was in
       use at the time in a manner which would have conflicted with the
       request.
  
  EEXIST File exists.  An existing file was mentioned in an inappropri-
       ate context, for instance, as the new link name in a link(2)
       function.
  
  EXDEV Improper link.  A hard link to a file on another file system was
       attempted.
  
  ENODEV Operation not supported by device.  An attempt was made to
       apply an inappropriate function to a device, for example, trying
       to read a write-only device such as a printer.
  
  ENOTDIR Not a directory.  A component of the specified pathname
       existed, but it was not a directory, when a directory was
       expected.
  
  EISDIR Is a directory.  An attempt was made to open a directory with
       write mode specified.
  
  EINVAL Invalid argument.  Some invalid argument was supplied.  (For
       example, specifying an undefined signal to a signal(3) or kill(2)
       function).
  
  ENFILE Too many open files in system.  Maximum number of file descrip-
       tors allowable on the system has been reached and a requests for
       an open cannot be satisfied until at least one has been closed.
  
  EMFILE Too many open files.  <As released, the limit on the number of
       open files per process is 64.> The getrlimit(2) call with the
       RLIMIT_NOFILE resource will obtain the current limit.
  
  ENOTTY Inappropriate ioctl for device.  A control function (see
       ioctl(2)) was attempted for a file or special device for which
       the operation was inappropriate.
  
  ETXTBSY Text file busy.  The new process was a pure procedure (shared
       text) file which was open for writing by another process, or
       while the pure procedure file was being executed an open(2) call
       requested write access.
  
  EFBIG File too large.  The size of a file exceeded the maximum.  (The
       system-wide maximum file size is 2**63 bytes.  Each file system
       may impose a lower limit for files contained within it).
  
  ENOSPC Device out of space.  A write(2) to an ordinary file, the cre-
       ation of a directory or symbolic link, or the creation of a
       directory entry failed because no more disk blocks were available
       on the file system, or the allocation of an inode for a newly
       created file failed because no more inodes were available on the
       file system.
  
  ESPIPE Illegal seek.  An lseek(2) function was issued on a socket,
       pipe or FIFO.
  
  EROFS Read-only file system.  An attempt was made to modify a file or
       directory was made on a file system that was read-only at the
       time.
  
  EMLINK Too many links.  The number of hard links to a single file has
       exceeded the maximum.  (The system-wide maximum number of hard
       links is 32767.  Each file system may impose a lower limit for
       files contained within it).
  
  EPIPE Broken pipe.  A write on a pipe, socket or FIFO for which there
       is no process to read the data.
  
  EDOM Numerical argument out of domain.  A numerical input argument was
       outside the defined domain of the mathematical function.
  
  ERANGE Result too large or too small.  The result of the function is
       too large or too small to be represented in the available space.
  
  EAGAIN Resource temporarily unavailable.  This is a temporary condi-
       tion and later calls to the same routine may complete normally.
  
  EINPROGRESS Operation now in progress.  An operation that takes a long
       time to complete (such as a connect(2)) was attempted on a non-
       blocking object (see fcntl(2)).
  
  EALREADY Operation already in progress.  An operation was attempted on
       a non-blocking object that already had an operation in progress.
  
  ENOTSOCK Socket operation on non-socket.  Self-explanatory.
  
  EDESTADDRREQ Destination address required.  A required address was
       omitted from an operation on a socket.
  
  EMSGSIZE Message too long.  A message sent on a socket was larger than
       the internal message buffer or some other network limit.
  
  EPROTOTYPE Protocol wrong type for socket.  A protocol was specified
       that does not support the semantics of the socket type requested.
       For example, you cannot use the ARPA Internet UDP protocol with
       type SOCK_STREAM.
  
  ENOPROTOOPT Protocol option not available.  A bad option or level was
       specified in a getsockopt(2) or setsockopt(2) call.
  
  EPROTONOSUPPORT Protocol not supported.  The protocol has not been
       configured into the system or no implementation for it exists.
  
  ESOCKTNOSUPPORT Socket type not supported.  The support for the socket
       type has not been configured into the system or no implementation
       for it exists.
  
  EOPNOTSUPP Operation not supported.  The attempted operation is not
       supported for the type of object referenced.  Usually this occurs
       when a file descriptor refers to a file or socket that cannot
       support this operation, for example, trying to accept a connec-
       tion on a datagram socket.
  
  EPFNOSUPPORT Protocol family not supported.  The protocol family has
       not been configured into the system or no implementation for it
       exists.
  
  EAFNOSUPPORT Address family not supported by protocol family.  An
       address incompatible with the requested protocol was used.  For
       example, you shouldn't necessarily expect to be able to use NS
       addresses with ARPA Internet protocols.
  
  EADDRINUSE Address already in use.  Only one usage of each address is
       normally permitted.
  
  EADDRNOTAVAIL Cannot assign requested address.  Normally results from
       an attempt to create a socket with an address not on this
       machine.
  
  ENETDOWN Network is down.  A socket operation encountered a dead net-
       work.
  
  ENETUNREACH Network is unreachable.  A socket operation was attempted
       to an unreachable network.
  
  ENETRESET Network dropped connection on reset.  The host you were con-
       nected to crashed and rebooted.
  
  ECONNABORTED Software caused connection abort.  A connection abort was
       caused internal to your host machine.
  
  ECONNRESET Connection reset by peer.  A connection was forcibly closed
       by a peer.  This normally results from a loss of the connection
       on the remote socket due to a timeout or a reboot.
  
  ENOBUFS No buffer space available.  An operation on a socket or pipe
       was not performed because the system lacked sufficient buffer
       space or because a queue was full.
  
  EISCONN Socket is already connected.  A connect(2) request was made on
       an already connected socket; or, a sendto(2) or sendmsg(2)
       request on a connected socket specified a destination when
       already connected.
  
  ENOTCONN Socket is not connected.  An request to send or receive data
       was disallowed because the socket was not connected and (when
       sending on a datagram socket) no address was supplied.
  
  ESHUTDOWN Cannot send after socket shutdown.  A request to send data
       was disallowed because the socket had already been shut down with
       a previous shutdown(2) call.
  
  ETOOMANYREFS Too many references: can't splice.  The resource is used
       up to capacity.
  
  ETIMEDOUT Operation timed out.  A connect(2) or send(2) request failed
       because the connected party did not properly respond after a
       period of time.  (The timeout period is dependent on the communi-
       cation protocol).
  
  ECONNREFUSED Connection refused.  No connection could be made because
       the target machine actively refused it.  This usually results
       from trying to connect to a service that is inactive on the for-
       eign host.
  
  ELOOP Too many levels of symbolic links.  A path name lookup involved
       more than 32 (MAXSYMLINKS) symbolic links.
  
  ENAMETOOLONG File name too long.  A component of a path name exceeded
       255 (MAXNAMELEN) characters, or an entire path name exceeded 1023
       (MAXPATHLEN-1) characters.
  
  EHOSTDOWN Host is down.  A socket operation failed because the desti-
       nation host was down.
  
  EHOSTUNREACH No route to host.  A socket operation was attempted to an
       unreachable host.
  
  ENOTEMPTY Directory not empty.  A directory with entries other than
       `.' and `..' was supplied to a remove directory or rename call.
  
  EPROCLIM Too many processes.
  
  EUSERS Too many users.  The quota system ran out of table entries.
  
  EDQUOT Disc quota exceeded.  A write(2) to an ordinary file, the cre-
       ation of a directory or symbolic link, or the creation of a
       directory entry failed because the user's quota of disk blocks
       was exhausted, or the allocation of an inode for a newly created
       file failed because the user's quota of inodes was exhausted.
  
  ESTALE Stale NFS file handle.  An attempt was made to access an open
       file (on an NFS filesystem) which is now unavailable as refer-
       enced by the file descriptor.  This may indicate the file was
       deleted on the NFS server or some other catastrophic event
       occurred.
  
  EREMOTE Too many levels of remote in path.  NFS version 3 RPC return
       code 71.
  
  EBADRPC RPC struct is bad.  Exchange of RPC information was unsuccess-
       ful.
  
  ERPCMISMATCH RPC version wrong.  The version of RPC on the remote peer
       is not compatible with the local version.
  
  EPROGUNAVAIL RPC prog. not avail.  The requested program is not regis-
       tered on the remote host.
  
  EPROGMISMATCH Program version wrong.  The requested version of the
       program is not available on the remote host (RPC).
  
  EPROCUNAVAIL Bad procedure for program.  An RPC call was attempted for
       a procedure which doesn't exist in the remote program.
  
  ENOLCK No locks available.  A system-imposed limit on the number of
       simultaneous file locks was reached.
  
  ENOSYS Function not implemented.  Attempted a system call that is not
       available on this system.
  
  EFTYPE Inappropriate file type or format.  Attempted a file operation
       on a file of a type for which it was invalid.
  
  EAUTH Authentication error.  Attempted to use an invalid authentica-
       tion ticket to mount an NFS filesystem.
  
  ENEEDAUTH Need authenticator.  An authentication ticket must be
       obtained before the given NFS filesystem may be mounted.
  
  EIDRM Identifier removed.  An IPC identifier was removed while the
       current process was waiting on it.
  
  ENOMSG No message of the desired type.  An IPC message queue does not
       contain a message of the desired type, or a message catalog does
       not contain the requested message.
  
  EOVERFLOW Value too large to be stored in data type.  A numerical
       result of the function was too large to be stored in the caller-
       provided space.
  
  EILSEQ Illegal byte sequence.  A wide character/multibyte character
       encoding error occurred.
  
  ENOTSUP Not supported.  An attempt was made to set or change a parame-
       ter to an unsupported value.
  
  ECANCELED Operation canceled.  The requested operation was canceled.
  
  EBADMSG Bad or corrupt message.  A message in the specified message
       catalog did not satisfy implementation defined criteria, or a
       STREAMS operation encountered an invalid message or a file
       descriptor at the STREAM head.
  
  ENODATA No message available.  No message is available on the STREAM
       head read queue
  
  ENOSR No STREAM resources.  Buffers could not be allocated due to
       insufficient STREAMs memory resources.
  
  ENOSTR Not a STREAM.  A STREAM is not associated with the specified
       file descriptor.
  
  ETIME STREAM ioctl timeout.  The timer set for a STREAMS ioctl(2)
       operation has expired.
  
  ENOATTR Attribute not found.  The specified extended attribute does
       not exist.
  
  EMULTIHOP Multihop attempted.  Components of path require hopping to
       multiple remote machines and the file system does not allow it.
       It occurs when users try to access remote resources which are not
       directly accessible.
  
  ENOLINK Link has been severed.  Occurs when the link (virtual circuit)
       connecting to a remote machine is gone.
  
  EPROTO Protocol error.  Some protocol error occurred.  This error is
       device-specific, but is generally not related to a hardware fail-
       ure.