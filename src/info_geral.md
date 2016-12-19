### INFORMAÇÕES GERAIS ###

*   Julia é uma linguagem de programação compilada (JIT – Just in time) open source de alto nível projetado com foco na computação científica e numérica de alto desempenho (BEZANSON et al., 2015). É relativamente jovem, posto que teve início no MIT em agosto de 2009 e, em fevereiro de 2012, tornou-se open source. É fruto do trabalho de três pesquisadores: Stefan Karpinski, Jeff Bezanson, e Viral Shah (BEZANSON et al., 2015). Foi pensada como uma linguagem para computação científica suficientemente rápida como C ou Fortran, mas igualmente fácil de aprender como o MATLAB e o Mathematica, com o objetivo de facilitar a modelagem computacional. É escrito em C, C++ e Scheme, e a biblioteca padrão é escrita utilizando a própria linguagem Julia. Possui forte inspiração em MATLAB, Lisp, C, Fortran, Mathematica, Python, Perl, R, Ruby, Lua, além de compartilhar muitas características de Dylan e Fortress.


### VANTAGENS DA LINGUAGEM DE PROGRAMAÇÃO JULIA###

*   Livre e open source (Licença MIT)
*   Tipos definidos pelo usuário são rápidos e compactos como tipos nativos
*   Ausência da necessidade de vetorizar códigos por desempenho; códigos não vetorizados são rápidos
*   Projetado para computação paralela e distribuída
*   Lightweight “green” threading coroutines
*   Sistemas de tipos não obstrutivos mas poderoso
*   Conversão e promoção de tipos numéricos e outros de forma elegante e extensível
*   Suporte eficiente para Unicode, incluindo mas não limitado ao UTF-8
*   Chamadas de funções em C de forma direta (sem necessidade de wrappers ou API especial)
*   Capacidade semelhante a de uma poderosa shell para gerenciar outros processos
*   Macros de forma parecida a Lisp e outras facilidades de metaprogramação

### APLICAÇÕES ###

*   Julia é projetado para resolver problemas matemáticos numericamente, que consiste na manipulação numérica dos dados. Isso significa que nem sempre ele não poderá dar uma solução analítica para um problema, e não deve ser confundido com programas como o Mathematica ou Maple, que trablham com soluções simbólicas, fazendo a manipulação algébrica.A maioria dos problemas matemáticos reais (particularmente em engenharia) não têm soluções simbólicas puras.


**1.** Online

Para usar a linguagem sem precisar instalar, acesse: juliabox.org e entre com uma conta do google. Baixe estes notebooks e faça o upload no JuliaBox.

**2.** Online
Com a conta no JuliaBox.org, faça um clone de todos os notebooks:
> vá em **Sync** na pagina principal após logado

> Em Git Repositories, copie e cole este repositorio https://github.com/jmarcellopereira/juliatutorialbr.git no campo logo abaixo.

> tab para completar o campo do meio. tab novamente e a aparecerá a pasta juliatutorialbr.

> click no ##+## e pronto! todo o conteúdo foi copiado para a pasta juliatutorialbr da sua conta no juliabox.

**3.** Offline

Baixe o instalador no julia.org e instale o jupyter (jupyter.org). Baixe estes notebooks e faça o upload no jupyter.

**INSTALAÇÃO DO JULIA**

Via synaptic

digite julia e veja se mostra a versão 0.4.2 ou superior. Se não, instale via PPA

Via terminal

	sudo add-apt-repository ppa:staticfloat/juliareleases

	sudo add-apt-repository ppa:staticfloat/julia-deps

	sudo apt-get update

	sudo apt-get install julia

Adicionando pacotes no terminal

	$julia

	$julia> Pkg.add(“IJulia”)

Se ocorrer:

Failed to execute "git ls-remote --tags --heads git://github.com/twbs/bootstrap-sass.git", exit code of #128 fatal: unable to connect to github.com: github.com[0: 192.30.252.130]: errno=Connection timed out

isso acontece em funcao do firewall. Use:

	$ git config --global url."https://".insteadOf git://

se ocorrer o erro:

WARNING: ZMQ had build errors.
 - packages with build errors remain installed in /home/jmp/.julia/v0.4
 - build the package(s) and all dependencies with `Pkg.build("ZMQ")`
 - build a single package by running its `deps/build.jl` script

significa que ha dependencia de algum recurso de compilação. Instale o “CodeLite” via Synaptics ou Apper que resolve.

Ou

	$sudo apt-get update && apt-get upgrade

	$sudo apt-get install build-essential

pacotes importantes

	Julia>Pkg.add("Gadfly")		:Graficos

	Julia>Pkg.add("PyPlot")	:Facilitar graficos

	Julia>Pkg.add("Roots")		: raizes e outras funçõs

	Julia>Pkg.add("Winston")	: graficos

	Julia>Pkg.add("ODE")		: equações diferenciais

	Julia>Pkg.add("SingularIntegralEquations")

	Julia>Pkg.add(“SymPy”) 		: para trabalhar com matematica simbolica no julia

instalar pacote nao oficial

	Julia>Pkg.clone("git://github.com/hwborchers/NumericalMath.jl.git")

	Julia>Pkg.init(“NumericalMath”)
