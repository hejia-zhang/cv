\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2018/01/17 My custom cv class]
\RequirePackage{titlesec}
% Needed to configure page layout
\RequirePackage{geometry}
\RequirePackage{enumitem}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright\bf} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

%%%%%%%%%%%%%%%%title%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\address}[3]{
  \center{#1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3} \\
}

\newcommand{\contact}[2]{
  \center{#1 \ {\Large} #2} \\
}
%%%%%%%%%%%%%%%Education%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\school}[4]{
  \subsection[#1]{\bf{#1} \hfill \it{#2}} 
  \subsection[#3]{\normalsize{#3} \hfill \it{#4}} 
}

\newcommand{\schoolhornors}[4]{
  \begin{description}[labelwidth=4em, leftmargin = \dimexpr\labelwidth+\labelsep\relax]
  \item [Honor] {#1 \hfill #2 \\ #3 \hfill #4}
  \end{description}
}

\newcommand{\selectedcourses}[5]{
  \begin{description} 
  \item [Selected Courses] {\begin{tabular}{c c c c c} #1 & #2 & #3 & #4 & #5 \\ \end{tabular}}
  \end{description}
}
%%%%%%%%%%%%%%%%%%%%%%Job%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\company}[4]{
  \subsection[#1]{\bf{#1} \hfill \it{#2}} 
  \subsection[#3]{\it\normalsize{#3} \hfill \it{#4}} 
}

\newcommand{\workdescription}[3]{
  \begin{itemize} [leftmargin = 1em]
  \item \normalsize{#1}
  \item \normalsize{#2}
  \item \normalsize{#3}
  \end{itemize}
}
%%%%%%%%%%%%%%%%%%%%%%%Projects%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\project}[4]{
  \subsection[#1]{\bf{#1} \hfill \it{#2}}
  \subsection[#3]{\it\normalsize{#3} \hfill \it{#4}}
}
\newcommand{\projectdescription}[3]{
  \begin{itemize} [leftmargin = 1em]
  \item \normalsize{#1}
  \item \normalsize{#2}
  \item \normalsize{#3}
  \end{itemize}
}
%%%%%%%%%%%%%%%%%%%%%%SKILLS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\skill}[6]{
  \begin{description} 
  \item [#1] {\begin{tabular}{c c c c c} #2 & #3 & #4 & #5 & #6 \\ \end{tabular}}
  \end{description}
}
%%%%%%%%%%%%%%%%%%%%%%REFEREE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\referee}[3]{
  \begin{itemize} [leftmargin = 1em]
  \item \normalsize{#1}
  \item \normalsize{#2}
  \item \normalsize{#3}
  \end{itemize}
}


