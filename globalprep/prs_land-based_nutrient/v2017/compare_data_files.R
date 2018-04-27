### Comparing two raster files to determine how they are different

## fertilizer 2013
old <- raster(file.path(dir_M, 
            "marine_threats/impact_layers_2013_redo/impact_layers/work/land_based/before_2007/step7/output/2013/global_plumes_fert_2013_raw.tif"))
plot(old)
old

new <- raster(file.path(dir_M, 
                        "marine_threats/impact_layers_2013_redo/impact_layers/work/land_based/before_2007/raw_global_results/global_plumes_fert_2013_raw.tif"))
plot(new)
new

stack_fert <- stack(old, new)
pairs(stack_fert, maxpixels=10000000)


## organic 2013
old <- raster(file.path(dir_M, 
                        "marine_threats/impact_layers_2013_redo/impact_layers/work/land_based/before_2007/step7/output/2013/global_plumes_pest_2013_raw.tif"))
new <- raster(file.path(dir_M, 
                        "marine_threats/impact_layers_2013_redo/impact_layers/work/land_based/before_2007/raw_global_results/global_plumes_pest_2013_raw.tif"))

stack_fert <- stack(old, new)
pairs(stack_fert, maxpixels=1000000)


## appear to be the same data.  There are additional earlier years in the raw_global_results
## folder - will use these data. It looks like the data files were created during
## different years.  At some point, all files should be recreated with latest data
## because FAO modifies previous years of data.
