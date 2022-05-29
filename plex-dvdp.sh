#!/usr/bin/env bash
if [ $# != 1 ]; then
    printf "Usage: %s container\n" "$(basename "$0")"
    exit 1
else
    container="$1"
    for unfixed in *".${container}"
    do
        printf "Processing %s\n" "${unfixed}"
        fixed="$(basename -s ".${container}" "${unfixed}")-DoVi.mp4"
        printf "\tRemuxing with Dolby Vision flags...\n"
        ffmpeg -loglevel error -i "${unfixed}" -map 0 -map_metadata -1 -map -0:s -c:a copy -c:v copy -bsf:v hevc_mp4toannexb -tag:v hvc1 -strict unofficial -movflags faststart "${fixed}"
        printf "\tSetting Dolby Vision codec for Apple QuickTime...\n"
        mp4dovi -from hvc1 -to dvh1 "${fixed}" 1> /dev/null
        printf "%s is ready for Dolby Vision Direct Play\n\n" "${fixed}"
    done
fi
