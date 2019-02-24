\name{vallade}
\alias{vallade}
\alias{Vallade}
\alias{vallade.eqn5}
\alias{vallade.eqn7}
\alias{vallade.eqn12}
\alias{vallade.eqn14}
\alias{vallade.eqn16}
\alias{vallade.eqn17}
\title{Various functions from Vallade and Houchmandzadeh}
\description{
Various functions from Vallade and Houchmandzadeh (2003), dealing with
analytical solutions of a neutral model of biodiversity
}
\usage{
vallade.eqn5(JM, theta, k)
vallade.eqn7(JM, theta)
vallade.eqn12(J, omega, m, n)
vallade.eqn14(J, theta, m, n)
vallade.eqn16(J, theta, mu)
vallade.eqn17(mu, theta, omega, give=FALSE)
}
\arguments{
  \item{J,JM}{Size of the community and metacommunity respectively}
  \item{theta}{Biodiversity number
    \eqn{\theta=(J_M-1)\nu/(1-\nu)}{theta=(JM-1)nu/(1-nu)} as discussed
    in equation 6}
  \item{k,n}{Abundance}
  \item{omega}{Relative abundance \eqn{\omega=k/J_M}{k/JM}}
  \item{m}{Immigration probability}
  \item{mu}{Scaled immigration probability
    \eqn{\mu=(J-1)m/(1-m)}{mu=(J-1)m/(1-m)}}
  \item{give}{In function \code{vallade.eqn17()}, Boolean with default
    \code{FALSE} meaning to return the numerical value of the integral
    and \code{TRUE} meaning to return the entire output of
    \code{integrate()} including the error estimates}
}
\details{
  Notation follows Vallade and Houchmandzadeh (2003) exactly. 
}
\references{
  M. Vallade and B. Houchmandzadeh 2003. \dQuote{Analytical Solution of a
    Neutral Model of Biodiversity}, \emph{Physical Review E}, volume 68.
  doi: 10.1103/PhysRevE.68.061902
}
\author{Robin K. S. Hankin}
\note{
  Function \code{vallade.eqn16()} requires the \code{polynom} library,
  which is not loaded by default.  It will not run for \eqn{J>50} due to
  some stack overflow error.

  Function \code{vallade.eqn5()} is identical to function
  \code{alonso.eqn6()}
}
\examples{
# A nice check:
JM <- 100
k <- 1:JM
sum(k*vallade.eqn5(JM,theta=5,k))  # should be JM=100 exactly.



# Now, a replication of Figure 3:
  omega <- seq(from=0.01, to=0.99,len=100)
  f <- function(omega,mu){
    vallade.eqn17(mu,theta=5, omega=omega)
  }
  plot(omega,
  omega*5,type="n",xlim=c(0,1),ylim=c(0,5),
        xlab=expression(omega),
        ylab=expression(omega*g[C](omega)),
        main="Figure 3 of Vallade and Houchmandzadeh")
  points(omega,omega*sapply(omega,f,mu=0.5),type="l")
  points(omega,omega*sapply(omega,f,mu=1),type="l")
  points(omega,omega*sapply(omega,f,mu=2),type="l")
  points(omega,omega*sapply(omega,f,mu=4),type="l")
  points(omega,omega*sapply(omega,f,mu=8),type="l")
  points(omega,omega*sapply(omega,f,mu=16),type="l")
  points(omega,omega*sapply(omega,f,mu=Inf),type="l")




# Now a discrete version of Figure 3 using equation 14:
J <- 100
omega <- (1:J)/J

f <- function(n,mu){
   m <- mu/(J-1+mu)
   vallade.eqn14(J=J, theta=5, m=m, n=n)
 }
plot(omega,omega*0.03,type="n",main="Discrete version of Figure 3 using
   eqn 14")
points(omega,omega*sapply(1:J,f,mu=16))
points(omega,omega*sapply(1:J,f,mu=8))
points(omega,omega*sapply(1:J,f,mu=4))
points(omega,omega*sapply(1:J,f,mu=2))
points(omega,omega*sapply(1:J,f,mu=1))
points(omega,omega*sapply(1:J,f,mu=0.5))

}
\keyword{math}
