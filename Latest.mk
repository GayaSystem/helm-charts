TARGET  := $(OBJ_DIR)/%.tgz
SOURCE  := charts/%
OBJECTS := $(shell find charts/* -type d -maxdepth 0)
TARGETS := $(patsubst $(SOURCE), $(TARGET), $(OBJECTS))

.SILENT:

all: $(TARGETS)

$(TARGET): $(SOURCE)
	cd $(OBJ_DIR) && \
	helm package ../$<
