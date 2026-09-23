OBJ_DIR := build
TARGET  := $(OBJ_DIR)/%.tgz
SOURCE  := charts/%
OBJECTS := $(shell find charts/* -type d -maxdepth 0)
TARGETS := $(patsubst $(SOURCE), $(TARGET), $(OBJECTS))

.SILENT:

all: $(TARGETS) $(OBJ_DIR)/index.yaml

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(TARGET): $(SOURCE) | $(OBJ_DIR)
	cd $(OBJ_DIR) && \
	helm package ../$<

$(OBJ_DIR)/index.yaml: $(TARGETS)
	helm repo index $(OBJ_DIR)
	echo "Successfully created index.yaml and saved it to: $(shell pwd)/$(OBJ_DIR)"

clean:
	rm -rf $(OBJ_DIR)