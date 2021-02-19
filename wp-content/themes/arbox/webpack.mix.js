const mix = require('laravel-mix');
require('laravel-mix-imagemin');
require('laravel-mix-clean-css');

const ImageminPlugin = require('imagemin-webpack-plugin').default;
const imageminMozjpeg = require('imagemin-mozjpeg');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');

/*
|--------------------------------------------------------------------------
| Mix Asset Management
|--------------------------------------------------------------------------
|
| Mix provides a clean, fluent API for defining some Webpack build steps
| for your Laravel application. By default, we are compiling the Sass
| file for the application as well as bundling up all the JS files.
|
*/
mix.extend('disableWarning', new babelFix());

mix.js('assets/src/js/app.js', 'assets/dist/js/scripts.min.js')
    //   .babel('assets/dist/js/scripts.min.js', 'assets/dist/js/scripts.min.js')
   .disableWarning()
   .sass('assets/src/scss/main.scss', 'assets/dist/css/main.min.css')
   .options({ outputStyle: 'compressed', processCssUrls: false });

mix.webpackConfig({
    plugins: [
        new CopyWebpackPlugin([{
            from: 'assets/src/images',
            to: 'assets/dist/images/',
        }]),
        new ImageminPlugin({
            //Disable on prod ==============
            // bypassOnDebug: true, // webpack@1.x
            // disable: true, // webpack@2.x and newer
            // =============================
            test: /\.(jpe?g|png|gif|svg)$/i,
            pngquant: ({
                quality: '80-90'
            }),
            plugins: [
                imageminMozjpeg({
                    quality: 80,
                    //Set the maximum memory to use in kbytes
                    // maxmemory: 1000 * 512
                })
            ]
        })
    ],
});
//Para funcionar no IE, basta descomentar a linha .babel('public...'),
//deixei comentada pois é bem lento esse processo.
//Aconselho ativa-lo só quando subir pra produção e não pra desenvolvimento.