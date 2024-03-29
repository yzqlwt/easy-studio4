/**
 * Base webpack config used across other specific configs
 */

import path from 'path';
import webpack from 'webpack';
import { dependencies as externals, version, updatelog } from '../../src/package.json';
const HtmlWebpackPlugin = require('html-webpack-plugin');

export default {
  externals: [...Object.keys(externals || {})],

  module: {
    rules: [
      {
        test: /\.[j|t]sx?$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            cacheDirectory: true,
          },
        },
      },
    ],
  },

  output: {
    path: path.join(__dirname, '../../src'),
    // https://github.com/webpack/webpack/issues/1114
    libraryTarget: 'commonjs2',
  },

  /**
   * Determine the array of extensions that should be used to resolve modules.
   */
  resolve: {
    extensions: ['.js', '.jsx', '.json', '.ts', '.tsx'],
    modules: [path.join(__dirname, '../src'), 'node_modules'],
  },

  plugins: [
    new webpack.EnvironmentPlugin({
      NODE_ENV: 'production',
    }),
    new HtmlWebpackPlugin({
        title: 'EasyStudio v'+ version + updatelog,
        template: 'src/template.html',
        filename: 'src/index.html',
    }),
  ],
};
