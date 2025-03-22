## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
# library(RPhosFate)
# 
# cv_dir <- demoProject()

## ----eval=FALSE---------------------------------------------------------------
# x <- RPhosFate(
#   cv_dir = cv_dir,
#   ns_dep_ovl = 25e-4,
#   ns_dep_cha = 0.0,
#   nv_tfc_inl = c(SS = 0.6, PP = 0.6),
#   nv_enr_rto = c(PP = 2.0),
#   nm_olc = matrix(c(4704255, 2795195), ncol = 2L),
#   df_cdt = read.table(
#     file.path(cv_dir, "cdt.txt"),
#     header = TRUE,
#     stringsAsFactors = FALSE
#   )
# )

## ----eval=FALSE---------------------------------------------------------------
# x <- firstRun(x, substance = "SS")

## ----eval=FALSE---------------------------------------------------------------
# x <- snapGauges(x)
# 
# metrics <- calibrationQuality(x, substance = "SS", col = "SS_load")

## ----eval=FALSE---------------------------------------------------------------
# x <- setParameter(x, ns_dep_ovl = 15e-4)
# 
# x <- subsequentRun(x, substance = "SS")
# 
# metrics <- calibrationQuality(x, substance = "SS", col = "SS_load")

## ----eval=FALSE---------------------------------------------------------------
# x <- subsequentRun(x, substance = "PP")
# 
# metrics <- calibrationQuality(x, substance = "PP", col = "PP_load")

## ----eval=FALSE---------------------------------------------------------------
# x <- setParameter(x, nv_enr_rto = c(PP = 1.4))
# 
# x <- subsequentRun(x, substance = "PP")
# 
# metrics <- calibrationQuality(x, substance = "PP", col = "PP_load")

## ----eval=FALSE---------------------------------------------------------------
# saveState(x)

## ----eval=FALSE---------------------------------------------------------------
# x <- RPhosFate(
#   cv_dir = cv_dir,
#   ls_ini = TRUE
# )

