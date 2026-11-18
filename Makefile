.PHONY: all flex bison clean

all: flex bison

flex:
	@for source in Flex_Learning/*/src/*.l; do \
		project=$$(dirname "$$(dirname "$$source")"); \
		name=$$(basename "$$source" .l); \
		mkdir -p "$$project/build"; \
		flex -o "$$project/build/lex.yy.c" "$$source"; \
		gcc "$$project/build/lex.yy.c" -o "$$project/build/$$name"; \
	done

bison:
	@project=Bison/Bison-Addition-Parser; \
	mkdir -p "$$project/build"; \
	bison -d -o "$$project/build/bison.tab.c" "$$project/src/bison.y"; \
	flex -o "$$project/build/lex.yy.c" "$$project/src/lex.l"; \
	gcc -I"$$project/build" "$$project/build/bison.tab.c" "$$project/build/lex.yy.c" -o "$$project/build/bison-addition-parser"

clean:
	@find Flex_Learning Bison -type f -path '*/build/*' -delete