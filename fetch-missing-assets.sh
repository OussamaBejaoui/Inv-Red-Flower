#!/usr/bin/env bash
# Run from inside the reorganized project root (where index.html lives).
# Downloads everything the original Tilda export never captured.
set -e

mkdir -p assets/images/full

echo "== 20 full-resolution photos (only 20px placeholder + resized preview were saved before) =="
curl -sSL -o "assets/images/full/ChatGPT_Image_Nov_17.png"      "https://static.tildacdn.net/tild3036-6339-4661-b266-303136653461/ChatGPT_Image_Nov_17.png"
curl -sSL -o "assets/images/full/300592484d1f31590325.png"      "https://static.tildacdn.net/tild3132-6432-4634-b430-363237393231/300592484d1f31590325.png"
curl -sSL -o "assets/images/full/6.png"                          "https://static.tildacdn.net/tild3137-3335-4936-b237-373239373463/6.png"
curl -sSL -o "assets/images/full/Group_170.png"                  "https://static.tildacdn.net/tild3433-3734-4762-a164-666138626132/Group_170.png"
curl -sSL -o "assets/images/full/10.png"                         "https://static.tildacdn.net/tild3433-6663-4330-a137-613561336134/10.png"
curl -sSL -o "assets/images/full/ChatGPT_Image_Aug_3_.png"       "https://static.tildacdn.net/tild3435-3731-4464-a537-636664626563/ChatGPT_Image_Aug_3_.png"
curl -sSL -o "assets/images/full/Rectangle_230.png"              "https://static.tildacdn.net/tild3530-3262-4233-b530-616132323935/Rectangle_230.png"
curl -sSL -o "assets/images/full/12.png"                         "https://static.tildacdn.net/tild3532-3561-4666-a237-313238636665/12.png"
curl -sSL -o "assets/images/full/8.png"                          "https://static.tildacdn.net/tild3533-3265-4563-b736-393435313361/8.png"
curl -sSL -o "assets/images/full/4.png"                          "https://static.tildacdn.net/tild3663-3132-4432-a235-646532383935/4.png"
curl -sSL -o "assets/images/full/Group_169.png"                  "https://static.tildacdn.net/tild3732-6333-4264-b465-666237366336/Group_169.png"
curl -sSL -o "assets/images/full/7.png"                          "https://static.tildacdn.net/tild3832-3065-4639-a230-356430313331/7.png"
curl -sSL -o "assets/images/full/11.png"                         "https://static.tildacdn.net/tild3864-3337-4739-a531-386461373465/11.png"
curl -sSL -o "assets/images/full/5.png"                          "https://static.tildacdn.net/tild6133-3536-4633-a235-666135386531/5.png"
curl -sSL -o "assets/images/full/image-gen_1-Photoroo.png"       "https://static.tildacdn.net/tild6161-3933-4132-b732-303939666537/image-gen_1-Photoroo.png"
curl -sSL -o "assets/images/full/Polygon_2_1.png"                "https://static.tildacdn.net/tild6262-6339-4933-b833-343039643037/Polygon_2_1.png"
curl -sSL -o "assets/images/full/3.png"                          "https://static.tildacdn.net/tild6333-3634-4663-b934-383437663463/3.png"
curl -sSL -o "assets/images/full/9.png"                          "https://static.tildacdn.net/tild6431-3231-4264-b831-356433313265/9.png"
curl -sSL -o "assets/images/full/2.png"                          "https://static.tildacdn.net/tild6632-3839-4062-b566-313035356630/2.png"
curl -sSL -o "assets/images/full/1.png"                          "https://static.tildacdn.net/tild6666-3562-4163-a264-306534393138/1.png"

echo "== legacy-browser polyfill (referenced with 'nomodule', wasn't in the export) =="
curl -sSL -o "assets/js/polyfill.js" "https://static.tildacdn.net/js/tilda-polyfill-1.0.min.js"

echo "== social-preview image (different hash than the on-page photos, from <meta og:image>) =="
curl -sSL -o "assets/images/og-image.png" "https://static.tildacdn.net/tild3338-6332-4463-b639-623665353237/300592484d1f31590325.png"

echo "Done. 22 files fetched into assets/images/full, assets/js, assets/images/og-image.png."
echo "Note: index.html still points at the live CDN URLs for these — point it at the local"
echo "files afterward if you want the page fully offline."
