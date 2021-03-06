% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pbdRscript.r
\name{pbdRscript}
\alias{pbdRscript}
\title{pbdRscript}
\usage{
pbdRscript(body, mpicmd = "mpirun", nranks = 1, auto = TRUE,
  auto.dmat = FALSE, pid = TRUE, wait = TRUE, temp = tempfile())
}
\arguments{
\item{body}{character; the pbdR script to be evaluated.}

\item{mpicmd}{The command to launch mpi as a string (e.g., "mpirun", "mpiexec", 
"aprun", ...).}

\item{nranks}{The number of MPI ranks to launch.}

\item{auto}{logical; determines if the script should automatically load the
pbdMPI package, and call init() (at the beginning) and finalize() (at the
end).}

\item{auto.dmat}{logical; determines if the script should automatically load
the pbdDMAT package and call init.grid(). Automatically sets \code{auto=TRUE}.}

\item{pid}{Logical; determines if the process id (pid) should be printed to the
terminal or not. This is useful if you need to kill a hung job.}

\item{wait}{Logical values passed to R's \code{system()}.}

\item{temp}{A temporary file path that is accessible to all nodes, including
the client.  See details for a full explanation.}
}
\description{
This function is a simple wrapper around the system() command.  As such,
data is not shared between the calling R process and the batch processes
which execute the 'body' source.
}
\details{
Simple tool for executing pbdR batch jobs from inside R.


This is a simple wrapper around a system call to mpirun on the
input script.

Temp needs to be a file that the client and all servers can
read from.
}

