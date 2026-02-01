# Fortran-Numerical-Integration
Fortran program that integrates y = sqrt(1 − x²) over [0,1] using trapezoidal and Simpson methods, both simple and composite. Numerical results are compared with the exact value π/4 to study accuracy and convergence.

Numerical Integration in Fortran

This repository contains a Fortran program that performs the numerical integration of the function

𝑦
=
1
−
𝑥
2
y=
1−x
2
	​


over the interval 
[
0
,
1
]
[0,1], whose exact value is:

∫
0
1
1
−
𝑥
2
 
𝑑
𝑥
=
𝜋
4
∫
0
1
	​

1−x
2
	​

dx=
4
π
	​


The program compares several classical numerical integration methods with the exact result.

Implemented Methods

The following quadrature rules are implemented:

Trapezoidal rule

Simpson’s rule

Composite trapezoidal rule

Composite Simpson’s rule

Each method is used to approximate the integral and its result is compared against the analytical value 
𝜋
/
4
π/4.

Purpose

The goal of this project is to:

Study the accuracy of different numerical integration methods

Compare simple vs composite rules

Analyze the numerical error with respect to the exact solution

Practice structured scientific programming in Fortran

This type of problem is a classical benchmark in numerical analysis.

Requirements

A Fortran compiler (e.g. gfortran)

Standard Fortran 90 or later
