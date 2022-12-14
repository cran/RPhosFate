setClass(
  "RPhosFateParameters",
  slots = c(
    ns_slp_min = "numeric",
    ns_slp_max = "numeric",
    ns_rhy_a   = "numeric",
    ns_rhy_b   = "numeric",
    ns_cha_rto = "numeric",
    ns_man_rip = "numeric",
    ns_man_cha = "numeric",
    ns_dep_ovl = "numeric",
    ns_dep_cha = "numeric",
    ns_tfc_inl = "numeric",
    nv_enr_rto = "numeric",
    iv_fDo     = "integer",
    nm_olc     = "matrix",
    df_cdt     = "data.frame"
  )
)

parametersRDS2YAML <- function(substances) {
  parameters <- readRDS("parameters.rds")

  arguments <- slots2list(parameters)
  arguments[["nv_tfc_inl"]] <- setNames(
    rep(arguments[["ns_tfc_inl"]], length(substances)),
    substances
  )
  arguments[["ns_tfc_inl"]] <- NULL

  parameters <- new("RPhosFateParameters2", arguments)
  writeParameters(parameters)

  arguments
}
