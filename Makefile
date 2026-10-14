OBJ_DIR := build
export OBJ_DIR

.SILENT:

all: $(OBJ_DIR)
	echo "Create packages from main"
	$(MAKE) -f Latest.mk all
	echo "Create packages from tags"
	$(MAKE) -f Tags.mk all
	echo "Create index file"
	$(MAKE) $(OBJ_DIR)/index.yaml

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/index.yaml: $(OBJ_DIR)
	helm repo index $(OBJ_DIR)

clean:
	rm -rf $(OBJ_DIR)