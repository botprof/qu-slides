% QU-SLIDES: Beamer class with Queen's University styling
% Copyright (c) 2022, Joshua A. Marshall <joshua.marshall@queensu.ca>

\LoadClass[aspectratio=169,12pt]{beamer}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qu-slides}[2022/05/01 QU-SLIDES class by Joshua A. Marshall]

% Inner theme changes
\useinnertheme{rectangles}
\usefonttheme{structurebold}

% Set up fonts as you like them
% \RequirePackage{cmbright}
% \RequirePackage[T1]{fontenc}

% For Queen's standard font use this one
\renewcommand\mathfamilydefault{\rmdefault}
\RequirePackage{arevmath}
\RequirePackage[T1]{fontenc}
\RequirePackage[default,scale=1.05]{opensans} 
\RequirePackage[varqu,varl]{zi4}
\linespread{1.10}

% For code snippets in your slides
\RequirePackage{minted}
\setminted[python]{linenos=true}
\setminted[cpp]{linenos=true}
\renewcommand\theFancyVerbLine{\sffamily\scriptsize\arabic{FancyVerbLine}}

% For proper math stuff
\RequirePackage{amsmath,amsfonts,amssymb}

% For colours
\RequirePackage{color}

% For graphics
\RequirePackage{graphicx}

% For PDF features
\RequirePackage{pgfpages}

% For background wallpaper
\RequirePackage{wallpaper}

% For better tables
\RequirePackage{booktabs}

% For underlines
\RequirePackage{ulem}

% For urls
\RequirePackage{url}

% For embedding videos (you need a proper viewer for this to work)
\RequirePackage{multimedia}

% Set up Queen's colours as per the official Queen's Visual Identity Guide
% For more information visit: https://www.queensu.ca/brand-central/

\definecolor{qblue}{RGB}{0,36,82} % Blue
\definecolor{qred}{RGB}{185,14,49} % Red
\definecolor{qgold}{RGB}{250,189,15} % Gold
\definecolor{qlgrey}{RGB}{230,231,232} % Light grey
\definecolor{qdgrey}{RGB}{128,130,133} % Dark grey
\definecolor{qdlime}{RGB}{106, 98, 92} % Dark limestone
\definecolor{qblack}{RGB}{33,33,33} % Black for screens

% Gets rid of navigation symbols
\setbeamertemplate{navigation symbols}{}

% For hyperlink stuff
\RequirePackage{hyperref}

% For verbatim
\RequirePackage{verbatim}

% Beamer theme
\usetheme{default}

% Presentation mode
\mode<presentation>

% Change the default font sizes and emphasis to fit the theme
\setbeamerfont{title}{size=\huge, series=\bfseries}
\setbeamerfont{subtitle}{size=\Large, series=\bfseries}
\setbeamerfont{author}{size=\large, series=\mdseries}
\setbeamerfont{institute}{size=\footnotesize, series=\mdseries}
\setbeamerfont{date}{size=\small, series=\mdseries}
\setbeamerfont{caption}{size=\scriptsize}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}
\setbeamerfont{footline}{size=\tiny, series=\mdseries}

% Change default colours to fit title theme and for use with light backgrounds
\newcommand{\DefaultTitleColours}{
    \setbeamercolor{normal text}{fg=qblue}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=qblue}
    \setbeamercolor{author}{fg=qblue}
    \setbeamercolor{institute}{fg=qblue}
    \setbeamercolor{date}{fg=qblue}
    \setbeamercolor{frametitle}{fg=qblue}
    \setbeamercolor{structure}{fg=qblue}
    \setbeamercolor{local structure}{fg=qblue}
    \setbeamercolor{author in sidebar}{fg=qblue}
    \setbeamercolor{title in sidebar}{fg=qblue}
    \setbeamercolor{footline}{fg=white}
    \setbeamercolor{enumerate item}{fg=qlgrey}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qlgrey}
    \setbeamercolor{block title}{bg=qblue,fg=white}
    \setbeamercolor{block body}{bg=qlgrey}
    \setbeamercolor{background block}{bg=qlgrey}
    \setbeamercolor{background canvas}{bg=white}
}

% Change the default colours to be white for use with dark title backgrounds
\newcommand{\WhiteTitleColours}{
    \setbeamercolor{normal text}{fg=white}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=white}
    \setbeamercolor{author}{fg=white}
    \setbeamercolor{institute}{fg=white}
    \setbeamercolor{date}{fg=white}
    \setbeamercolor{frametitle}{fg=white}
    \setbeamercolor{structure}{fg=white}
    \setbeamercolor{local structure}{fg=white}
    \setbeamercolor{author in sidebar}{fg=white}
    \setbeamercolor{title in sidebar}{fg=white}
    \setbeamercolor{footline}{fg=white}
    \setbeamercolor{enumerate item}{fg=white}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qdlime}
    \setbeamercolor{block title}{bg=qlgrey,fg=qblack}
    \setbeamercolor{block body}{bg=qdlime}
    \setbeamercolor{background block}{bg=qdlime}
}

% Change default colours to fit our theme and for use with light backgrounds
\newcommand{\DefaultColours}{
    \setbeamercolor{normal text}{fg=qblue}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=qblue}
    \setbeamercolor{author}{fg=qblue}
    \setbeamercolor{institute}{fg=qblue}
    \setbeamercolor{date}{fg=qblue}
    \setbeamercolor{frametitle}{fg=qred}
    \setbeamercolor{structure}{fg=qblue}
    \setbeamercolor{local structure}{fg=qblue}
    \setbeamercolor{author in sidebar}{fg=qblue}
    \setbeamercolor{title in sidebar}{fg=qblue}
    \setbeamercolor{footline}{fg=qblue}
    \setbeamercolor{enumerate item}{fg=qlgrey}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qlgrey}
    \setbeamercolor{block title}{bg=qblue,fg=white}
    \setbeamercolor{block body}{bg=qlgrey}
    \setbeamercolor{background block}{bg=qlgrey}
    \setbeamercolor{background canvas}{bg=white}
}

% Change the default colours to be white for use with dark backgrounds
\newcommand{\WhiteColours}{
    \setbeamercolor{normal text}{fg=white}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=white}
    \setbeamercolor{author}{fg=white}
    \setbeamercolor{institute}{fg=white}
    \setbeamercolor{date}{fg=white}
    \setbeamercolor{frametitle}{fg=qgold}
    \setbeamercolor{structure}{fg=white}
    \setbeamercolor{local structure}{fg=white}
    \setbeamercolor{author in sidebar}{fg=white}
    \setbeamercolor{title in sidebar}{fg=white}
    \setbeamercolor{footline}{fg=white}
    \setbeamercolor{enumerate item}{fg=white}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qdgrey}
    \setbeamercolor{block title}{bg=qlgrey,fg=qblack}
    \setbeamercolor{block body}{bg=qdgrey}
    \setbeamercolor{background block}{bg=qdgrey}
}

% Change default colours to fit our theme and for use with light Smith backgrounds
\newcommand{\SmithColours}{
    \setbeamercolor{normal text}{fg=qblue}
    \usebeamercolor[fg]{normal text}
    \setbeamercolor{title}{fg=qblue}
    \setbeamercolor{author}{fg=qblue}
    \setbeamercolor{institute}{fg=qblue}
    \setbeamercolor{date}{fg=qblue}
    \setbeamercolor{frametitle}{fg=qblue}
    \setbeamercolor{structure}{fg=qblue}
    \setbeamercolor{local structure}{fg=qblue}
    \setbeamercolor{author in sidebar}{fg=qblue}
    \setbeamercolor{title in sidebar}{fg=qblue}
    \setbeamercolor{footline}{fg=qblue}
    \setbeamercolor{enumerate item}{fg=qlgrey}
    \setbeamercolor{block title alerted}{bg=qred,fg=white}
    \setbeamercolor{block body alerted}{bg=qlgrey}
    \setbeamercolor{block title}{bg=qblue,fg=white}
    \setbeamercolor{block body}{bg=qlgrey}
    \setbeamercolor{background block}{bg=qlgrey}
    \setbeamercolor{background canvas}{bg=white}
}

% Set some other template options
\setbeamercovered{transparent}
\setbeamertemplate{caption}[caption name own line]
\setbeamertemplate{sidebar canvas right}[vertical shading][bottom=white,top=qlgrey!20]
\setbeamertemplate{footline}{
    \usebeamerfont{footline}
    \hspace{28pt}
    \color{qdgrey}\insertframenumber~of~\inserttotalframenumber~---~\insertauthor
    \vspace{18pt}
}
\setbeamertemplate{frametitle}{
    \usebeamerfont{frametitle}
    \vspace{22pt}
    \insertframetitle
}

% Configure theme "SlideTitleBlue"
\newcommand{\SlideTitleBlue}{
    % Set the background image
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-title-blue.pdf}
        }
    % Set the colours
    \WhiteTitleColours
}

% Configure theme "SlideTitleRed"
\newcommand{\SlideTitleRed}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-title-red.pdf}
    }
    % Set the colours
    \WhiteTitleColours    
}

% Configure theme "SlideTitleGrey"
\newcommand{\SlideTitleGrey}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-title-grey.pdf}
    }
    % Set the colours
    \DefaultTitleColours    
}

% Configure theme "SlideTitleGold"
\newcommand{\SlideTitleGold}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-title-gold.pdf}
    }
    % Set the colours
    \DefaultTitleColours    
}

% Configure theme "SlideThemeWhite"
\newcommand{\SlideThemeWhite}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-background-white.pdf}
    }
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideThemeGrey"
\newcommand{\SlideThemeGrey}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-background-grey.pdf}
    }
    % Set the colours
    \DefaultColours
}

% Configure theme "SlideThemeBlue"
\newcommand{\SlideThemeBlue}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/qu-background-blue.pdf}
    }
    % Set the colours
    \WhiteColours
}

% Configure theme "SlideWhite"
\newcommand{\SlideWhite}{
    % Set the colours
    \DefaultColours
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=white}
}

% Configure theme "SlideBlack"
\newcommand{\SlideBlack}{
    % Set the colours
    \WhiteColours
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qblack}  
}

% Configure theme "SlideBlue"
\newcommand{\SlideBlue}{
    % Set the colours
    \WhiteColours    
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qblue}
}

% Configure theme "SlideRed"
\newcommand{\SlideRed}{
    % Set the colours
    \WhiteColours    
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qred}
}

% Configure theme "SlideGrey"
\newcommand{\SlideGrey}{
    % Set the colours
    \DefaultColours    
    % Set the background canvas
    \setbeamertemplate{background canvas}[default]
    \setbeamercolor{background canvas}{bg=qlgrey}
}

% Configure theme "SmithTitleGold"
\newcommand{\SmithTitleGold}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/smith-title-gold.pdf}
    }
    % Set the colours
    \DefaultTitleColours    
}

% Configure theme "SmithTitleGrey"
\newcommand{\SmithTitleGrey}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/smith-title-grey.pdf}
    }
    % Set the colours
    \DefaultTitleColours    
}

% Configure theme "SmithBlueGold"
\newcommand{\SmithBlueGold}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/smith-blue-gold.pdf}
    }
    % Set the colours
    \WhiteColours
}

% Configure theme "SmithWhiteGold"
\newcommand{\SmithWhiteGold}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/smith-white-gold.pdf}
    }
    % Set the colours
    \SmithColours
}

% Configure theme "SmithWhiteGrey"
\newcommand{\SmithWhiteGrey}{
    % Set the background canvas
    \setbeamertemplate{background canvas}{
        \CenterWallPaper{1}{bgs/smith-white-grey.pdf}
    }
    % Set the colours
    \SmithColours
}

% Let's update the title page to look like the Queen's standard PPT template
\setbeamertemplate{title page}{
    \begin{beamercolorbox}[]{title}
        \begin{flushleft}
            \vspace{-18pt}
            \usebeamerfont{title}
            \inserttitle
            \usebeamerfont{subtitle} \\
            \insertsubtitle \\
            \vspace{12pt}
            \usebeamerfont{author}
            \insertauthor \\
            \vspace{12pt}
            \usebeamerfont{institute}
            \insertinstitute \\
            \vspace{12pt}
            \usebeamerfont{date}
            \insertdate
        \end{flushleft}
    \end{beamercolorbox}
}

% Some handy commands
\newcommand{\norm}[1]{\left\Vert#1\right\Vert}
\newcommand{\abs}[1]{\left\vert#1\right\vert}
\newcommand{\set}[1]{\left\{#1\right\}}
\newcommand{\Real}{\mathbb R}
\newcommand{\Complex}{\mathbb C}
\newcommand{\eps}{\varepsilon}
\newcommand{\To}{\longrightarrow}
\newcommand{\Ker}{\textup{Ker}}
\newcommand{\Img}{\textup{Img}}
\newcommand{\diag}{\textup{diag}}
\newcommand{\circulant}{\textup{circ}}
\newcommand{\mbf}{\boldsymbol}
\newcommand{\sep}{\enspace|\enspace}
\newcommand*\dif{\mathop{}\!\textup{d}}

% Theorem environments
\newtheorem{thm}{Theorem}