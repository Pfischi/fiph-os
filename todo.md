[One Liner to Download the Latest Release from Github Repo](https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8)

[One Liner to download the latest release from your GitHub repo](https://gist.github.com/gvenzl/1386755861fb42db492276d3864a378c)

[Shell - Get latest release from GitHub ](https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c)

# Zellij

- install: github release

https://github.com/Kerwood/cloud-os/blob/4244886bc965799d3947f529c3265afd2201f6af/files/scripts/install-zellij.sh

https://github.com/asen23/asen23-distrobox/blob/f9ef5070154aec09d54b28ddedd4fe77563cac69/Containerfile#L26-L31

https://github.com/robko23/os/blob/f124cf8905915649819a27172d6ea60bfed1ed88/build.sh#L38-L42

# Klassy

- install: opensuse repo

https://github.com/paulmcauley/klassy?tab=readme-ov-file#installation

# Maple font

- install: customize font

`--feat cv01,ss01,ss02,ss05,ss06`

```json
{
  "family_name": "Maple Mono",
  "use_hinted": true,
  "pool_size": 4,
  "enable_ligature": true,
  "ttfautohint_param": {},
  "github_mirror": "github.com",
  "infinite_arrow": null,
  "remove_tag_liga": false,
  "weight_mapping": {
    "thin": 100,
    "extralight": 200,
    "light": 300,
    "regular": 400,
    "medium": 500,
    "semibold": 600,
    "bold": 700,
    "extrabold": 800
  },
  "line_height": 1,
  "feature_freeze": {
    "cv01": "enable",
    "cv02": "ignore",
    "cv03": "ignore",
    "cv04": "ignore",
    "cv05": "ignore",
    "cv06": "ignore",
    "cv07": "ignore",
    "cv08": "ignore",
    "cv09": "ignore",
    "cv10": "ignore",
    "cv11": "ignore",
    "cv31": "ignore",
    "cv32": "ignore",
    "cv33": "ignore",
    "cv34": "ignore",
    "cv35": "ignore",
    "cv36": "ignore",
    "cv37": "ignore",
    "cv38": "ignore",
    "cv39": "ignore",
    "cv40": "ignore",
    "cv41": "ignore",
    "cv42": "ignore",
    "cv43": "ignore",
    "cv44": "ignore",
    "cv61": "ignore",
    "cv62": "ignore",
    "cv63": "ignore",
    "cv64": "ignore",
    "cv65": "ignore",
    "cv66": "ignore",
    "cv96": "ignore",
    "cv97": "ignore",
    "cv98": "ignore",
    "cv99": "ignore",
    "ss01": "enable",
    "ss02": "enable",
    "ss03": "ignore",
    "ss04": "ignore",
    "ss05": "enable",
    "ss06": "enable",
    "ss07": "ignore",
    "ss08": "ignore",
    "ss09": "ignore",
    "ss10": "ignore",
    "ss11": "ignore",
    "zero": "ignore"
  },
  "nerd_font": {
    "enable": true,
    "version": "3.4.0",
    "mono": false,
    "propo": false,
    "use_font_patcher": false,
    "glyphs": [
      "--complete"
    ],
    "extra_args": []
  },
  "cn": {
    "enable": false,
    "with_nerd_font": true,
    "fix_meta_table": true,
    "clean_cache": false,
    "narrow": false,
    "use_hinted": false,
    "use_static_base_font": true,
    "scale_factor": 1.0
  }
}
```