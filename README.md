# Color Maps for Godot

This project provides a number of color maps for data visualization or any other purpose, with the option of easily creating custom color maps.

## Installation

Place this repository's contents in a subfolder of your project (`addons/color_maps` is recommended). You can add it as a git submodule to your project.

## Usage

Create an instance of any provided or custom `ColorMap`, use the `get_color(normalized_value)` function to get the color corresponding to the value, in a 0-1 range. If you do not want to normalize the value, you can pass the result of `get_normalized_value(value, min_value, max_value)` instead.  

## Examples

The following image shows some of the provided color maps, drawn as 10-pixel wide lines with a pixel for each value horizontally, as well as 6 color bands.

![Color Maps](https://github.com/Cykyrios/GodotColorMaps/blob/main/examples/color_maps.png?raw=true)
