#! /bin/bash



# prepare
ROOT_DIR=$(pwd)

#check file exist
SOURCE_FILE="${ROOT_DIR}/three.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]]; then
	echo "文件不存在"
	exit 1
fi
DEST_DIR="${ROOT_DIR}/icon"
#如果目录有图片先清空
if [[ -d ${DEST_DIR} ]]; then
	rm -rf dir ${DEST_DIR}
fi
mkdir -p "${DEST_DIR}"
Image_NAME=("Icon-40.png" "Icon-58.png" "Icon-60.png" "Icon-80.png" "Icon-87.png" "Icon-120.png" "Icon-121.png" "Icon-180.png" "Icon-180.png" "Icon-1024.png")
Image_SIZE=("40" "58" "60" "80" "87" "120" "120" "180" "180" "1024")


#sips starting
cp "${SOURCE_FILE}" "${DEST_DIR}"
for ((i=0; i<${#Image_SIZE[@]} ;i++)); do
	size=${Image_SIZE[i]}
	sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done










