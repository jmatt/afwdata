#!/bin/sh
# Each image is swarped first to medswarp1.fits so medswarp1.head is used for the target WCS,
# then renamed to its final name
swarp med_img.fits -IMAGEOUT_NAME medswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE NEAREST
mv medswarp1.fits medswarp1nearest.fits
swarp med_img.fits -IMAGEOUT_NAME medswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE BILINEAR
mv medswarp1.fits medswarp1bilinear.fits
swarp med_img.fits -IMAGEOUT_NAME medswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE LANCZOS2
mv medswarp1.fits medswarp1lanczos2.fits
swarp med_img.fits -IMAGEOUT_NAME medswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE LANCZOS3
mv medswarp1.fits medswarp1lanczos3.fits
swarp med_img.fits -IMAGEOUT_NAME medswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE LANCZOS4
mv medswarp1.fits medswarp1lanczos4.fits
#
swarp medsub_img.fits -IMAGEOUT_NAME medsubswarp1.fits -SUBTRACT_BACK N -GAIN_DEFAULT 1.0 -RESAMPLING_TYPE LANCZOS2
mv medsubswarp1.fits medsubswarp1lanczos2.fits
