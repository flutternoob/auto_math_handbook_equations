String chapter08TeX = r"""

    <B>1) CG Location behind Front Wheels</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Location{\hspace{1mm}}behind{\hspace{1mm}}Front{\hspace{1mm}}Wheels = \Bigg(\frac{Weight{\hspace{1mm}}on{\hspace{1mm}}Rear{\hspace{1mm}}Wheels}{Vehicle{\hspace{1mm}}Weight}\Bigg)*Wheelbase\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Location behind Front Wheels is in "Inches"}\\
        \text{Weight on Rear Wheels is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
        \text{Wheelbase is in "Inches"}\\
    \end{array}
<BR>
    <B>2) CG Location Off-center to Heavy Side</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Location{\hspace{1mm}}Off center{\hspace{1mm}}to{\hspace{1mm}}Heavy{\hspace{1mm}}Side = \Bigg(\frac{Average{\hspace{1mm}}Track}{2}\Bigg)-\Bigg(\frac{Weight{\hspace{1mm}}on{\hspace{1mm}}Light{\hspace{1mm}}Side}{Vehicle{\hspace{1mm}}Weight}*Average{\hspace{1mm}}Track\Bigg)\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Location Off center to Heavy Side is in "Inches"}\\
        \text{$Average{\hspace{1mm}}Track$ = Average of the vehicle's front and rear track in "Inches"}\\
        \text{Weight on Light Side is in "Pounds"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
<BR>
    <B>3) CG Height</B><BR><BR>

    \begin{gather*}
        CG{\hspace{1mm}}Height = \frac{Level{\hspace{1mm}}Wheelbase*Raised{\hspace{1mm}}Wheelbase*Added{\hspace{1mm}}Weight{\hspace{1mm}}on{\hspace{1mm}}Scales}{Distance{\hspace{1mm}}Raised*Vehicle{\hspace{1mm}}Weight}\\
    \end{gather*}

    \begin{array}
        \text{\textbf{Where:}}\\
        \text{CG Height is in "Inches"}\\
        \text{$Level{\hspace{1mm}}Wheelbase$ = Wheelbase of the vehicle on level ground in "Inches"}\\
        \text{$Raised{\hspace{1mm}}Wheelbase$ = Wheelbase of the vehicle when it is raised by}\\
        \text{$\hspace{5cm}$ a certain distance, in "Inches"}\\
        \text{Added Weight on Scales is in "Pounds"}\\
        \text{Distance Raised is in "Inches"}\\
        \text{Vehicle Weight is in "Pounds"}\\
    \end{array}
""";