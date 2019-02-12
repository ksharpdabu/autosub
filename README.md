# Autosub <a href="https://pypi.python.org/pypi/autosub"><img src="https://img.shields.io/pypi/v/autosub.svg"></img></a>
  
### Auto-generated subtitles for any video

Autosub is a utility for automatic speech recognition and subtitle generation. It takes a video or an audio file as input, performs voice activity detection to find speech regions, makes parallel requests to Google Web Speech API to generate transcriptions for those regions, (optionally) translates them to a different language, and finally saves the resulting subtitles to disk. It supports a variety of input and output languages (to see which, run the utility with the argument `--list-languages`) and can currently produce subtitles in either the [SRT format](https://en.wikipedia.org/wiki/SubRip) or simple [JSON](https://en.wikipedia.org/wiki/JSON).

### Installation

1. Install [ffmpeg](https://www.ffmpeg.org/).
2. Run `pip install autosub`.

### 修改后的安装
原作者的项目中会校验ffmpeg是否安装和可执行，在win下有问题，所以注释了检测ffmpeg的相关代码。
1. 安装ffmpeg，并且将ffmpeg添加到系统变量。如win系统，则在cmd里执行：ffmpeg -v，如果有版本信息，则表示已成功添加到系统变量
2. 从github上下载，然后解压，切换到解压目录，执行" pip install . "

### 注意
1. 项目的key只是用于生成字幕，如果是需要翻译的话，需要自己去获取翻译api的key。
2. 原作者项目已支持py3了。

参考：
1. [autosub安装使用指南(windows及ubuntu)](https://binglinggroup.github.io/archives/autosub%E5%AE%89%E8%A3%85%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97(windows%E5%8F%8Aubuntu).html#windows%E4%BD%BF%E7%94%A8pip%E5%AE%89%E8%A3%85autosub)
2. [__init__.py](https://github.com/BingLingGroup/autosub/blob/dev/autosub/__init__.py)
3. [原作者项目：autosub](https://github.com/agermanidis/autosub)

### Usage

```
$ autosub -h
usage: autosub [-h] [-C CONCURRENCY] [-o OUTPUT] [-F FORMAT] [-S SRC_LANGUAGE]
               [-D DST_LANGUAGE] [-K API_KEY] [--list-formats]
               [--list-languages]
               [source_path]

positional arguments:
  source_path           Path to the video or audio file to subtitle

optional arguments:
  -h, --help            show this help message and exit
  -C CONCURRENCY, --concurrency CONCURRENCY
                        Number of concurrent API requests to make
  -o OUTPUT, --output OUTPUT
                        Output path for subtitles (by default, subtitles are
                        saved in the same directory and name as the source
                        path)
  -F FORMAT, --format FORMAT
                        Destination subtitle format
  -S SRC_LANGUAGE, --src-language SRC_LANGUAGE
                        Language spoken in source file
  -D DST_LANGUAGE, --dst-language DST_LANGUAGE
                        Desired language for the subtitles
  -K API_KEY, --api-key API_KEY
                        The Google Translate API key to be used. (Required for
                        subtitle translation)
  --list-formats        List all available subtitle formats
  --list-languages      List all available source/destination languages
```

### License

MIT
