# vimrc
my vimrc

## Requirements
### VIM
``` sh
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/
```
``` vim
:PluginInstall
```

### System
``` sh
sudo pacman -S ctags --needed
```

### Resources
``` sh
cp ~/.vim/fonts/SourceCodePro-Regular-Powerline.otf ~/.fonts/
```

### Front-end
``` sh
sudo npm install autoprefixer jshint -g
gem install compass sass

cd bundle/tern_for_vim && npm install
```

install syntastic-react
```
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react
```
eslintrc
```
{
    "parser": "babel-eslint",
    "env": {
        "browser": true,
        "node": true
    },
    "settings": {
        "ecmascript": 6,
        "jsx": true
    },
    "plugins": [
        "react"
    ],
    "rules": {
        "strict": 0,
        "quotes": 0,
        "no-unused-vars": 0,
        "camelcase": 0,
        "no-underscore-dangle": 0
    }
}
```
