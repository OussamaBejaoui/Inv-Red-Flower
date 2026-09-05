# Wedding Invitation Template (Tilda export, reorganized)

Original: `webgency.tilda.ws/template5.html` ("Viktor and Paula" — content text
left untouched, only structure reorganized).

## Structure

```
index.html
assets/
  css/        vendor Tilda CSS (grid, animation, popup, forms, page) + google-fonts-ovo.css
  js/         vendor Tilda JS modules, one file per script (page.js = this project's
              block-specific animation/layout code, tilda-blocks-page124649566)
  fonts/      3 fonts actually used by the design (Ovo, GT-Super-Display-Light,
              ImperialScript-Regular) + Ovo woff2 for Google Fonts
  images/
    placeholders/  24 tiny (20px) blur-up images — these are what the page loads
                   first (`src=`) before the real photo swaps in
    optimized/     10 webp images the browser actually fetched at display size
                   (`data-original` target for those photos)
    favicon.ico, mask-group-trace.svg
  media/
    background-video.mp4   (hero background video)
    background-music.mp3   ("Alex Warren - Ordinary Lyrics", looped invitation audio)
```

## Blocks on the page (unchanged)

- 10× Tilda "Zero Block" (type 396) — the free-form animated sections
- 1× music-player block (type 131)
- 1× RSVP form block (type 702, `form2052858183`, POSTs to Tilda's form backend)

## Important: some images could not be localized

The original export only ever downloaded two versions of each content photo:
a 20px blur placeholder (`thb.tildacdn.net`) and, for photos the browser
happened to render at scrape time, a resized webp (`optim.tildacdn.net`).
The full-resolution source PNGs (`static.tildacdn.net/tild.../name.png`) were
never fetched by the scraper, so **14 of the 24 photos still point at their
original Tilda CDN URL** via `data-original` — nothing is broken or lower
quality than the export you gave me, but if Tilda ever takes that project
down, those particular photos will need to be re-sourced. Same story for:

- `tilda-polyfill-1.0.min.js` (legacy-browser fallback, not in the export → left on CDN)
- `tilda-forms-dict-1.0.min.js` (loaded dynamically at runtime by forms.js itself, not a `<script src>` — left as-is)
- 15 unused `@font-face` declarations in `page.css` (Tilda ships its whole font catalog on every export; only 3 are referenced by this design, and those 3 are the ones localized)
- the `og:image` meta tag (social-preview image, different hash than the on-page photos, never downloaded)

All other CSS, JS, fonts, video, audio, and 10/24 photos are fully local —
no CDN dependency for those.

`asset_mapping.json` has the full hash → filename → local-path table if you
need to trace or later fetch the missing full-res originals.
