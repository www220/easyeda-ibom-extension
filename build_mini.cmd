@cd /d "%~dp0"
call html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --collapse-boolean-attributes --remove-attribute-quotes dist/ibom.html -o ibom.mini.html
call uglifycss dist/ibom.css --output ibom.mini.css
call uglifyjs dist/ibom.js -c -m -o ibom.mini.js
call uglifyjs dist/render.js -c -m -o render.mini.js
call uglifyjs dist/split.js -c -m -o split.mini.js
call uglifyjs dist/table-util.js -c -m -o table-util.mini.js
call uglifyjs dist/util.js -c -m -o util.mini.js
pause