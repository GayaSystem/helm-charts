OBJ_DIR := build
export OBJ_DIR

.SILENT:

all: $(OBJ_DIR)
	$(MAKE) -f Latest.mk all
	$(MAKE) -f Tags.mk all
	$(MAKE) $(OBJ_DIR)/index.yaml

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/index.yaml: $(OBJ_DIR)
	helm repo index $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)