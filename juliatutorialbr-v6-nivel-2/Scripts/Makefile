COMPILADOR=gcc 

C_OPCOES=-c -Wall -lm -fPIC

FONTE=fmultiplica_c.c  # arquivo contendo o código da função
OBJETO=$(FONTE:.c=.o)

.c.o:
	$(COMPILADOR) $(C_OPCOES) $< -o $@ 

gerar_biblioteca: $(OBJETO)
	$(COMPILADOR) -shared -fPIC -o bibmultiplica.so $(OBJETO)

apagar:
	rm *.o *.so

