all: stylus

stylus:
	mkdir -p styl
	lessc less/font-awesome.less > styl/font-awesome.styl
	lessc less/font-awesome-ie7.less > styl/font-awesome-ie7.styl
	stylus --css styl/font-awesome.styl
	stylus --css styl/font-awesome-ie7.styl
	sed -i -e "1i \$$fontAwesomePath = '../font'\n" \
				 -e "s_\.\./font_\$$fontAwesomePath_g" styl/font-awesome.styl

.phony: all stylus
