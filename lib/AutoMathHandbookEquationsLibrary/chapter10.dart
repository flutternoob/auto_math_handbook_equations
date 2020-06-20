String chapter10TeX = r"""

    <B>1) Vehicle Inertia</B><BR><BR>

    \begin{gather*}
        I = \frac{6.098*Vehicle{\hspace{1mm}}Weight}{\Big(\frac{Driveshaft{\hspace{1mm}}RPM}{Vehicle{\hspace{1mm}}Speed}\Big)^2}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$I$ = Vehicle Inertia is in "Slug-Feet"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>Steps to calculate Driveshaft RPM</B><BR><BR>
<P>
a) Find circumference of Tire<BR>
b) Find Number of Tire Revolutions per Mile<BR>
c) Find Number of Driveshaft Revolutions per Mile<BR>
d) Find Number of Driveshaft Revolutions per Hour<BR>
e) Find Number of Driveshaft Revolutions per Minute<BR>
</P>
<BR><BR>
    <B>a) Circumference of Tire</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Circumference = \frac{(\pi*Tire{\hspace{1mm}}Diameter)}{12}\\
    \end{gather*}

    \begin{array}
    \text{\textbf{Where:}}\\
        \text{Tire Circumference is in "Feet"}\\
        \text{Tire Diameter is in "Inches"}\\
    \end{array}
<BR>
    <B>b) Number of Tire Revolutions per Mile</B><BR><BR>

    \begin{gather*}
        Tire{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile = \frac{5280}{Tire{\hspace{1mm}}Circumference}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Tire Circumference is in "Feet"}\\
    \end{array}
<BR>
    <B>c) Number of Driveshaft Revolutions per Mile</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile = Tire{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile*Final{\hspace{1mm}}Drive{\hspace{1mm}}Ratio\\
    \end{gather*}
<BR>
    <B>d) Number of Driveshaft Revolutions per Hour</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Hour = Vehicle{\hspace{1mm}}Speed*Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Mile\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{Vehicle Speed is in "MPH"}\\
    \end{array}
<BR>
    <B>e) Number of Driveshaft Revolutions per Minute</B><BR><BR>

    \begin{gather*}
        Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Minute = \frac{Driveshaft{\hspace{1mm}}Revolutions{\hspace{1mm}}Per{\hspace{1mm}}Hour}{60}\\
    \end{gather*}
<BR>
    <B>2) Moment of Inertia of a Flat Disc</B><BR><BR>

    \begin{gather*}
        J_{0} = \frac{1}{2}MR^2\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{$J_{0}$ = Moment of Inertia of the Disc in "Slug-Feet"}\\
        \text{$M$ = Mass of the Disc in "Pounds"}\\
        \text{$R$ = Radius of the Disc in "Inches"}\\
    \end{array}
""";