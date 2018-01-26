
BUILD_DIR="./dist"
EXEC_DIR="./bin"
EXEC_NAME="${EXEC_DIR}/hascheme"

all: ${EXEC_NAME}

${EXEC_NAME}: Main.hs ${EXEC_DIR}
	ghc -odir ${BUILD_DIR} -hidir ${BUILD_DIR} -o ${EXEC_NAME} Main.hs

${EXEC_DIR}:
	mkdir ${EXEC_DIR}

clean:
	rm -rf ${BUILD_DIR}
	rm -rf ${EXEC_DIR}

.PHONY: clean

