# /etc/profile.d/freetype2.sh
# FreeType configuration file

# Subpixel hinting mode can be chosen by setting the right TrueType interpreter
# version. FreeType must be compiled with 'FT_CONFIG_OPTION_SUBPIXEL_HINTING',
# otherwise these options are not available for configuration during runtime.
# Currently, three versions are available:
#
#   truetype:interpreter-version=35  # Classic mode (default in 2.6)
#   truetype:interpreter-version=38  # Infinality mode
#   truetype:interpreter-version=40  # Minimal mode (default in 2.7)
#
# There are more properties that can be set, separated by whitespace. Please
# refer to the FreeType documentation for details.
#
# Uncomment and configure below.
# (Note: Some systems may require these in /etc/environment)

# Truetype interpreter version
#   Sets only the interpreter version.
#export FREETYPE_PROPERTIES="truetype:interpreter-version=35"
#export FREETYPE_PROPERTIES="truetype:interpreter-version=38"
#export FREETYPE_PROPERTIES="truetype:interpreter-version=40"

# Allow freetype to auto-select interpreter.
#   Also enables warp hinting code.
#export FREETYPE_PROPERTIES="autofitter:warping=1"

# FreeType-2.6.X style rendering
#   Disables newer interpretter features to look more like FreeType 2.6.X.
#   Also enables warp hinting code (AF_CONFIG_OPTION_USE_WARPER) for more
#   accurate scaling and grid alignment of glyphs.
#export FREETYPE_PROPERTIES="\
#       truetype:interpreter-version=35 \
#       cff:no-stem-darkening=1 \
#       autofitter:warping=1"

# FreeType-2.9.X advanced options
#   Example configuration using newer interpreter with
#   custom stem-darkening parameters and warp hinting.
#export FREETYPE_PROPERTIES="\
#       truetype:interpreter-version=40 \
#       type1:darkening-parameters=500,300,1000,200,1500,100,2000,0 \
#       autofitter:warping=1"
