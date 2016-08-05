%%XJTU wanco 制作，如有问题请联系wanco@vip.qq.com
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xjtuthesis_2014}[2016/07/31 v1.0 LaTeX document class for thesis/dissertation of Xi'an Jiaotong University]
%%直接基于ctexbook定义本模版
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[cs4size,openany]{ctexbook}
%%根据学校论文格式要求，设定纸张大小为A4，上3cm，下2.5cm，左2.6cm，右2.6cm
\RequirePackage[a4paper,left=2.6cm,right=2.6cm,top=3cm,bottom=2.5cm]{geometry}
%%使用times字体
\RequirePackage{times}
%%使用natbib宏包满足参考文献格式要求
\RequirePackage[square,comma,numbers,sort&compress]{natbib}
%%使用颜色宏包
\RequirePackage[usenames,dvipsnames]{color}
%%使用超链接宏包，在自动为各种引用添加链接
\RequirePackage[colorlinks,linkcolor=black,anchorcolor=blue,citecolor=blue]{hyperref}
%%为了使用\autoref,修改图和表的引用前缀
\renewcommand\figureautorefname{图}
\renewcommand\tableautorefname{表}
%%三线表
\usepackage{multirow,booktabs}
\setlength{\heavyrulewidth}{1.5pt}
\setlength{\lightrulewidth}{1pt}
\setlength{\cmidrulewidth}{1pt}
\setlength{\aboverulesep}{0pt}
\setlength{\belowrulesep}{0pt}
%%三级标题样式
\CTEXsetup[name={,},number={\arabic{chapter}},format={\songti\centering\zihao{3}},beforeskip={2em},afterskip={1em}]{chapter}
\CTEXsetup[format={\songti\centering\zihao{-3}\raggedright},beforeskip={1em},afterskip={0.5em},aftername={\space}]{section}
\CTEXsetup[format={\songti\zihao{4}},beforeskip={0.5em},afterskip={0em},aftername={\space},indent={\parindent}]{subsection}
%%数学宏包及公式编号格式
\RequirePackage{amsmath}
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}
%%标题宏包及图表编号格式
\RequirePackage[font={small,singlespacing},skip={0pt}]{caption}
\captionsetup{labelsep=quad}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}

%%定义一些变量，用于区分不同类型的模版
\newcommand{\setdegreetypestrchs}[2]{\def \degreetypestrchs{#1} \def \degreetypestreng{#2}}
\newcommand{\setthesistypestreng}[1]{\def \thesistypestreng{#1} \def \THESISTYPESTRENG{\uppercase{#1}}}
\newcommand{\setdisciplinelabelchs}[2]{\def \disciplinelabelchs{#1} \def \disciplinelabeleng{#2}}

%%论文封面的一些字段
\newcommand{\setsupervisor}[4]{
	\def \supervisorstrc{#1#2} 
	\def \supervisorstre{#4\ #3}}
\newcommand{\setdiscipline}[2]{
	\def \disciplinestrchs{#1} 
	\def \disciplinestreng{#2}}
\newcommand{\setreplyyearmonth}[3]{
	\def \replydatec{#1年#2月} 
	\def \replydatee{#3 #1}}
\newcommand{\setdisciplinecategory}[1]{\def \disciplinecategorystr{#1}}
\newcommand{\setauthor}[2]{\def \authorstrchs{#1} \def \authorstreng{#2}}
\newcommand{\settitle}[2]{\def \titlestrchs{#1} \def \titlestreng{#2}}

%页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[OC]{\zihao{5} \leftmark}
\fancyhead[OL]{}
\fancyhead[OR]{}
\fancyhead[EL]{}
\fancyhead[EC]{\zihao{5} 西安交通大学\degreetypestrchs 学位论文}
\fancyhead[ER]{}
\fancyfoot{}
\fancyfoot[OR]{\zihao{-5}\thepage}
\fancyfoot[EL]{\zihao{-5}\thepage}
\newcommand{\makeheadrule}{%
	\makebox[0pt][l]{\rule[.7\baselineskip]{\headwidth}{0.5pt}}%
	\rule[.6\baselineskip]{\headwidth}{0.5pt}\vskip-1.3\baselineskip}
\makeatletter
\renewcommand{\headrule}{%
	{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
		\makeheadrule}}
\RequirePackage{graphicx}

\fancypagestyle{plain}{
	\fancyfoot[OR]{\zihao{-5}\thepage}
	\fancyfoot[EL]{\zihao{-5}\thepage}
	\fancyhead[OC]{\zihao{5}\leftmark}
	}
%%生成封面
\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\vspace*{1.02cm}
	\begin{figure}[h]
		\centering
		\includegraphics[width=10.2cm,height=2.37cm]{logo}
	\end{figure}
	\vspace*{0.1cm}
	\begin{center}
		{\zihao{2}\degreetypestrchs 学位论文}
	\end{center}
	\vspace*{2.58cm}
	\begin{center}
		{\songti\zihao{3}\bfseries\titlestrchs}
	\end{center}
	\vspace*{6.07cm}
	\begin{center}
		\zihao{3}
		学位申请人：\authorstrchs\\
		\vspace*{12pt}
		指导教师：\supervisorstrc\\
		\vspace*{12pt}
		\disciplinelabelchs：\disciplinestrchs\\
		\vspace*{12pt}
		\replydatec
	\end{center}
	\newpage
	\thispagestyle{empty}\mbox{}
	\newpage
	\thispagestyle{empty}
	\vspace*{11pt}
	\begin{center}
		\bfseries
		\zihao{3}
		\rmfamily
		\titlestreng
	\end{center}
	\vspace*{3.7cm}
	\begin{center}
		\zihao{3}
		\rmfamily
		A \thesistypestreng\space submitted to\\
		\vspace*{3pt}
		Xi’an Jiaotong University\\
		\vspace*{3pt}
		in partial fulfillment of the requirements\\
		\vspace*{3pt}
		for the degree of\\
		\vspace*{3pt}
		\degreetypestreng\space of \disciplinecategorystr\\
		\vspace*{4.85cm}
		By\\
		\vspace*{3pt}
		\authorstreng\\
		\vspace*{3pt}
		Supervisor:\ \supervisorstre\\
		\vspace*{3pt}
		(\disciplinestreng)\\
		\vspace*{3pt}
		\replydatee
	\end{center}
	\newpage
	\thispagestyle{empty}\mbox{}
	}

\newenvironment{abstractchs}[2]{
	\newpage
	\newcommand{\keywordsc}{#1}
	\newcommand{\dissertationtypec}{#2}
	\pagenumbering{Roman}
	\let\cdpage\cleardoublepage
	\let\cpage\clearpage
	\let\cleardoublepage\endgraf
	\let\clearpage\endgraf
	\bfseries
	\normalsize
	\songti
	\hangafter=1
	\hangindent=5em
	\noindent
	论文题目：\titlestrchs
	
	\noindent
	\disciplinelabelchs：\disciplinestrchs\\
	学位申请人：\authorstrchs\\
	指导教师：\supervisorstrc\\
	\mdseries
	\chapter*{摘\quad 要}\chaptermark{摘\quad 要}
}{\\

	\zihao{5}
	\hangafter=1
	\hangindent=5em
	\noindent
	\makebox[4em]{关\hspace{\fill}键\hspace{\fill}词}：\keywordsc
	
	\noindent
	\mbox{论文类型：\dissertationtypec}}
\newenvironment{abstracteng}[2]{
	\newpage
	\newcommand{\keywordse}{#1}
	\newcommand{\dissertationtypee}{#2}
	\let\cdpage\cleardoublepage
	\let\cpage\clearpage
	\let\cleardoublepage\endgraf
	\let\clearpage\endgraf
	\normalsize
	\rmfamily
	\hangafter=1
	\hangindent=32pt
	\noindent
	\bfseries
	Title:\ \titlestreng
	
	\noindent
	\disciplinelabeleng:\ \disciplinestreng\\
	Applicant:\ \authorstreng \\
	Supervisor:\ \supervisorstre

	\chapter*{Abstract}\chaptermark{Abstract}
	\setlength{\parindent}{0pt}
	}{\\
	
	
	\zihao{5}
	\hangafter=1
	\hangindent=77pt
	\noindent
	KEY WORDS:\ \keywordse
	
	\noindent
	TYPE OF \THESISTYPESTRENG:\ \dissertationtypee
}

%目录
\RequirePackage[titles]{tocloft}
\newcommand{\maketableofcontents}{
	\renewcommand\contentsname{目\quad 录}
	\renewcommand\cfttoctitlefont{\songti\zihao{3}\centering}
	\renewcommand{\cftbeforetoctitleskip}{2em}
	\renewcommand{\cftaftertoctitleskip}{1em}
	\renewcommand\cftchapfont{\songti}
	\renewcommand\cftbeforechapskip{0pt}
	\renewcommand\cftchappagefont{\mdseries}
	\renewcommand{\cftdotsep}{1}
	\renewcommand{\cftchapdotsep}{1}
	\renewcommand\cftchapleader{\cftdotfill{\cftsecdotsep}}
	\renewcommand{\cftchapnumwidth}{1em}
	\renewcommand{\cftsecnumwidth}{1.7em}
	\renewcommand{\cftsubsecnumwidth}{2.5em}
	\renewcommand{\cftsecindent}{1em}
	\renewcommand{\cftsubsecindent}{2em}
	\renewcommand{\cftsetpnumwidth}{10pt}
	\renewcommand{\cftsetrmarg}{10pt}
	\tableofcontents
	}
%%英文目录
\makeatletter
\newcommand\engcontentsname{Contents}
\newcommand\tableofengcontents{%
	\if@twocolumn
	\@restonecoltrue\onecolumn
	\else
	\@restonecolfalse
	\fi
	\chapter*{\engcontentsname
		\@mkboth{%
			\MakeUppercase\engcontentsname}{\MakeUppercase\engcontentsname}}%
	\@starttoc{toe}% !!!!Define a new contents!!!!
	\if@restonecol\twocolumn\fi
}
\newcommand\addengcontents[2]{%
	\addcontentsline{toe}{#1}{\protect\numberline{\csname the#1\endcsname}#2}}
\makeatother
\newcommand\echapter[1]{\addengcontents{chapter}{#1}}
\newcommand\esection[1]{\addengcontents{section}{#1}}
\newcommand\esubsection[1]{\addengcontents{subsection}{#1}}
\newcommand{\maketableofengcontents}{
	\tableofengcontents
	}

%%定义用于上标引用的命令
\newcommand\upcite[1]{\textsuperscript{\cite{#1}}}

%%一些环境
\newenvironment{symbollist}{
	\chapter*{主要符号表}
	\markboth{主要符号表}{}
	}{}
\renewenvironment{thanks}{
	\newpage
	\chapter*{致\quad 谢}
	\markboth{致\quad 谢}{}
	\addcontentsline{toc}{chapter}{致\quad 谢}
	\addcontentsline{toe}{chapter}{Acknowledgements}
}{}
\newenvironment{appendices}{
	\zihao{-4}
	\chapter*{附\quad 录}
	\markboth{附\quad 录}{}
	\addcontentsline{toc}{chapter}{附\quad 录}
	\addcontentsline{toe}{chapter}{Appendices}
	}{}	
\newenvironment{achievements}{
	\chapter*{攻读学位期间取得的研究成果}
	\markboth{攻读学位期间取得的研究成果}{}
	\addcontentsline{toc}{chapter}{攻读学位期间取得的研究成果}
	\addcontentsline{toe}{chapter}{Achievements}
	}{}	
\newcommand{\declarations}{
	\cleardoublepage
	\markboth{声明}{}
	\addcontentsline{toc}{chapter}{声明}
	\addcontentsline{toe}{chapter}{Declarations}
	\zihao{-4}
	\setlength{\parskip}{0pt}
	\begin{center}
		\zihao{3}\vspace*{0pt}
		学位论文独创性声明（1）
	\end{center}

		本人声明：所呈交的学位论文系在导师指导下本人独立完成的研究成果。文中依法引用他人的成果，均已做出明确标注或得到许可。论文内容未包含法律意义上已属于他人的任何形式的研究成果，也不包含本人已用于其他学位申请的论文或成果。
		本人如违反上述声明，愿意承担以下责任和后果：
		
		本人如违反上述声明，愿意承担以下责任和后果：
		
		1．交回学校授予的学位证书；
		
		2．学校可在相关媒体上对作者本人的行为进行通报；
		
		3．本人按照学校规定的方式，对因不当取得学位给学校造成的名誉损害，进行公开道歉。
		
		4．本人负责因论文成果不实产生的法律纠纷。\\
		
		论文作者（签名）：\hspace*{7.5em}日期：\hspace*{4em}年\hspace*{2.7em} 月\hspace*{2.7em}日
		
	\begin{center}
		\zihao{3}学位论文独创性声明（2）
	\end{center}
	
	本人声明：研究生        所提交的本篇学位论文已经本人审阅，确系在本人指导下由该生独立完成的研究成果。
	
	本人如违反上述声明，愿意承担以下责任和后果：
	
	1．学校可在相关媒体上对本人的失察行为进行通报；
	
	2．本人按照学校规定的方式，对因失察给学校造成的名誉损害，进行公开道歉。
	
	3．本人接受学校按照有关规定做出的任何处理。\\
	
	指导教师（签名）：\hspace*{7.5em}日期：\hspace*{4em}年\hspace*{2.7em}月\hspace*{2.7em}日
	
	\begin{center}
		\zihao{3}学位论文知识产权权属声明
	\end{center}
	
	我们声明，我们提交的学位论文及相关的职务作品，知识产权归属学校。学校享有以任何方式发表、复制、公开阅览、借阅以及申请专利等权利。学位论文作者离校后，或学位论文导师因故离校后，发表或使用学位论文或与该论文直接相关的学术论文或成果时，署名单位仍然为西安交通大学。\\
	
	论文作者（签名）：\hspace*{7.5em}日期：\hspace*{4em}年\hspace*{2.7em}月\hspace*{2.7em}日
	
	指导教师（签名）：\hspace*{7.5em}日期：\hspace*{4em}年\hspace*{2.7em}月\hspace*{2.7em}日\\
	
	\noindent
	(本声明的版权归西安交通大学所有，未经许可，任何单位及任何个人不得擅自使用)
	}