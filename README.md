Autor: João Marcello - jmarcellopereira@ufpi.edu.br

##Tutorial da linguagem Julia##

As características de Julia são tipagem opcional, multiple dispatch, e bom desempenho, alcançado utilizando inferência de tipos e compilação just-in-time (JIT) , implementada utilizando LLVM . Ela é multi-paradigma, combinando características de programação imperativa, funcional e orientada a objetos. A sintaxe de Julia é similar a do GNU Octave ou MATLAB(R) e consequentemente os programadores que que já utilizam estas linguagens devem sentir-se imediatamente confortáveis com Julia. Enquanto MATLAB(R) é um bem eficiente para experimentações e explorações de álgebra linear numérica, possui limitações para tarefas computacionais fora deste campo relativamente pequeno. Julia mantem a facilidade e expressividade do MATLAB(R) para computação numérica de alto nível, mas ultrapassa as limitações comparadas a uma linguagem de programação de propósito geral. Para alcançar isso, Julia é construída com heranças das linguagens de programação matemática, mas também herda muito de outras linguagens dinâmicas populares, incluindo Lisp, Perl, Python, Lua, and Ruby.

Vantagens de Julia em comparação com outros sistemas são:

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



**1.** Online

Para usar a linguagem sem precisar instalar, acesse: juliabox.org e entre com uma conta do google. Baixe estes notebooks e faça o upload no JuliaBox.

**2.** Online
Com a conta no JuliaBox.org, faça um clone de todos os notebooks:
> vá em **Sync** na pagina principal após logado
    
> Em Git Repositories, copie e cole este repositorio https://github.com/jmarcellopereira/juliatutorialbr.git no campo logo abaixo.
    
> tab para completar o campo do meio. tab novamente e a aparecerá a pasta juliatutorialbr. 

> click no ##+## e pronto! todo o conteúdo foi copiado para a pasta juliatutorialbr da sua conta no juliabox.

**2.** Offline

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