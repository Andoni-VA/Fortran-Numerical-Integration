# Numerical Integration in Fortran

This repository contains a Fortran program that performs the numerical integration of the function:

y = sqrt(1 - x^2)

over the interval [0, 1].

The exact value of this integral is pi / 4, which is used as a reference to evaluate the numerical error.

## Implemented Methods

The following numerical integration methods are implemented:

Trapezoidal rule

Simpson's rule

Composite trapezoidal rule

Composite Simpson's rule

Each method approximates the integral and compares the result with the exact value pi / 4.

## Purpose

The goals of this project are:

To study the accuracy of classical numerical integration methods

To compare simple and composite quadrature rules

To analyze numerical error and convergence

To practice structured scientific programming in Fortran

This is a standard benchmark problem in numerical analysis.

## Requirements

A Fortran compiler (e.g. gfortran)

Fortran 90 or later

## Output

The program prints the numerical result obtained with each method and compares it with the exact value pi / 4, allowing direct evaluation of accuracy and convergence.

Composite methods show improved accuracy as the number of subintervals increases

# How to Compile and Execute it

Example:
\bash
1) F -o nc mcf_tipos.f90 fun.f90 newton_cotes.f90
2) nc
