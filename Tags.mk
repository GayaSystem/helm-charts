TARGET  := $(OBJ_DIR)/%.tgz
OBJECTS := $(shell git tag | grep -E -e "-[0-9]+\.[0-9]+\.[0-9]+")
TARGETS := $(patsubst %, $(TARGET), $(OBJECTS))

.SILENT:

all: $(TARGETS)
	git switch -q main

$(TARGET):
	git switch -q --detach $(shell echo "$@" | sed "s/$(OBJ_DIR)\/\(.*\)\.tgz/\1/")
	cd $(OBJ_DIR) && \
	helm dependency update ../charts/$(shell echo "$@" | sed "s/$(OBJ_DIR)\/\(.*\)-[0-9]*\.[0-9]*\.[0-9]*\.tgz/\1/") && \
	helm package ../charts/$(shell echo "$@" | sed "s/$(OBJ_DIR)\/\(.*\)-[0-9]*\.[0-9]*\.[0-9]*\.tgz/\1/")
