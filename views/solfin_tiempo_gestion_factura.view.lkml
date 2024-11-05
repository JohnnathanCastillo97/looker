view: solfin_tiempo_gestion_factura {
  sql_table_name: bd_ic_cliente.solfin_tiempo_gestion_factura ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: fecha_ultma_gestion_italcol {
    type: string
    sql: ${TABLE}.fecha_ultma_gestion_italcol ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_factura {
    type: number
    sql: ${TABLE}.id_factura ;;
  }
  dimension: num_archivadas {
    type: number
    sql: ${TABLE}.num_archivadas ;;
  }
  dimension: num_devuelta_proveedor {
    type: number
    sql: ${TABLE}.num_devuelta_proveedor ;;
  }
  dimension: num_estado_ajuste_no {
    type: number
    sql: ${TABLE}.num_estadoAjuste_no ;;
  }
  dimension: num_estado_diferencias_cntb_si {
    type: number
    sql: ${TABLE}.num_estadoDiferenciasCntb_si ;;
  }
  dimension: num_reactivaciones {
    type: number
    sql: ${TABLE}.num_reactivaciones ;;
  }
  dimension: num_reclamos_dian {
    type: number
    sql: ${TABLE}.num_reclamos_dian ;;
  }
  dimension: num_tiene_devolucion_no {
    type: number
    sql: ${TABLE}.num_tiene_devolucion_no ;;
  }
  dimension: num_tiene_diferencia_prove_si {
    type: number
    sql: ${TABLE}.num_tiene_diferencia_prove_si ;;
  }
  dimension: tiempo_contabilizada_cruzada {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_cruzada ;;
  }
  dimension: tiempo_contabilizada_cruzada_nc {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_cruzada_nc ;;
  }
  dimension: tiempo_contabilizada_pagada {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_pagada ;;
  }
  dimension: tiempo_contabilizada_para_cruzar {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_para_cruzar ;;
  }
  dimension: tiempo_contabilizada_pen_cont_nc {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_pen_cont_nc ;;
  }
  dimension: tiempo_contabilizada_validada {
    type: number
    sql: ${TABLE}.tiempo_contabilizada_validada ;;
  }
  dimension: tiempo_devolver_provee_archivada {
    type: number
    sql: ${TABLE}.tiempo_devolver_provee_archivada ;;
  }
  dimension: tiempo_devolver_provee_italcol {
    type: number
    sql: ${TABLE}.tiempo_devolver_provee_italcol ;;
  }
  dimension: tiempo_pen_cont_archivada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_archivada ;;
  }
  dimension: tiempo_pen_cont_contabilizada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_contabilizada ;;
  }
  dimension: tiempo_pen_cont_cruzada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_cruzada ;;
  }
  dimension: tiempo_pen_cont_cruzada_nc {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_cruzada_nc ;;
  }
  dimension: tiempo_pen_cont_ctp_contabilizada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_contabilizada ;;
  }
  dimension: tiempo_pen_cont_ctp_cruzada_nc {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_cruzada_nc ;;
  }
  dimension: tiempo_pen_cont_ctp_devuelta_alm {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_devuelta_alm ;;
  }
  dimension: tiempo_pen_cont_ctp_devueltra_com {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_devueltra_com ;;
  }
  dimension: tiempo_pen_cont_ctp_pagada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_pagada ;;
  }
  dimension: tiempo_pen_cont_ctp_para_cruzar {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_para_cruzar ;;
  }
  dimension: tiempo_pen_cont_ctp_pen_con {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_pen_con ;;
  }
  dimension: tiempo_pen_cont_ctp_pen_con_nc {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_ctp_pen_con_nc ;;
  }
  dimension: tiempo_pen_cont_devuelta_alm {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_devuelta_alm ;;
  }
  dimension: tiempo_pen_cont_devuelta_comp {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_devuelta_comp ;;
  }
  dimension: tiempo_pen_cont_devuelta_provee {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_devuelta_provee ;;
  }
  dimension: tiempo_pen_cont_pagada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_pagada ;;
  }
  dimension: tiempo_pen_cont_para_cruzar {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_para_cruzar ;;
  }
  dimension: tiempo_pen_cont_pen_cont_nc {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_pen_cont_nc ;;
  }
  dimension: tiempo_pen_cont_reclamo_dian {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_reclamo_dian ;;
  }
  dimension: tiempo_pen_cont_validada {
    type: number
    sql: ${TABLE}.tiempo_pen_cont_validada ;;
  }
  dimension: tiempo_radicada_archivada {
    type: number
    sql: ${TABLE}.tiempo_radicada_archivada ;;
  }
  dimension: tiempo_radicada_contabilizada {
    type: number
    sql: ${TABLE}.tiempo_radicada_contabilizada ;;
  }
  dimension: tiempo_radicada_cruzada {
    type: number
    sql: ${TABLE}.tiempo_radicada_cruzada ;;
  }
  dimension: tiempo_radicada_cruzada_nc {
    type: number
    sql: ${TABLE}.tiempo_radicada_cruzada_nc ;;
  }
  dimension: tiempo_radicada_devuelta_provee {
    type: number
    sql: ${TABLE}.tiempo_radicada_devuelta_provee ;;
  }
  dimension: tiempo_radicada_oc_no_confirmada {
    type: number
    sql: ${TABLE}.tiempo_radicada_oc_no_confirmada ;;
  }
  dimension: tiempo_radicada_pagada {
    type: number
    sql: ${TABLE}.tiempo_radicada_pagada ;;
  }
  dimension: tiempo_radicada_para_cruzar {
    type: number
    sql: ${TABLE}.tiempo_radicada_para_cruzar ;;
  }
  dimension: tiempo_radicada_pen_cont {
    type: number
    sql: ${TABLE}.tiempo_radicada_pen_cont ;;
  }
  dimension: tiempo_radicada_pen_cont_nc {
    type: number
    sql: ${TABLE}.tiempo_radicada_pen_cont_nc ;;
  }
  dimension: tiempo_radicada_reclamo_dian {
    type: number
    sql: ${TABLE}.tiempo_radicada_reclamo_dian ;;
  }
  dimension: tiempo_radicada_validada {
    type: number
    sql: ${TABLE}.tiempo_radicada_validada ;;
  }
  dimension: tiempo_reactivacion_pen_con {
    type: number
    sql: ${TABLE}.tiempo_reactivacion_pen_con ;;
  }
  dimension: tiempo_reactivacion_triage {
    type: number
    sql: ${TABLE}.tiempo_reactivacion_triage ;;
  }
  dimension: tiempo_triage_archivada {
    type: number
    sql: ${TABLE}.tiempo_triage_archivada ;;
  }
  dimension: tiempo_triage_contabilidad {
    type: number
    sql: ${TABLE}.tiempo_triage_contabilidad ;;
  }
  dimension: tiempo_triage_cruzada {
    type: number
    sql: ${TABLE}.tiempo_triage_cruzada ;;
  }
  dimension: tiempo_triage_cruzada_nc {
    type: number
    sql: ${TABLE}.tiempo_triage_cruzada_nc ;;
  }
  dimension: tiempo_triage_devuelta_provee {
    type: number
    sql: ${TABLE}.tiempo_triage_devuelta_provee ;;
  }
  dimension: tiempo_triage_oc_no_confirmada {
    type: number
    sql: ${TABLE}.tiempo_triage_oc_no_confirmada ;;
  }
  dimension: tiempo_triage_pagada {
    type: number
    sql: ${TABLE}.tiempo_triage_pagada ;;
  }
  dimension: tiempo_triage_para_cruzar {
    type: number
    sql: ${TABLE}.tiempo_triage_para_cruzar ;;
  }
  dimension: tiempo_triage_pen_cont {
    type: number
    sql: ${TABLE}.tiempo_triage_pen_cont ;;
  }
  dimension: tiempo_triage_pen_cont_nc {
    type: number
    sql: ${TABLE}.tiempo_triage_pen_cont_nc ;;
  }
  dimension: tiempo_triage_pen_ctp {
    type: number
    sql: ${TABLE}.tiempo_triage_pen_ctp ;;
  }
  dimension: tiempo_triage_por_verificar {
    type: number
    sql: ${TABLE}.tiempo_triage_por_verificar ;;
  }
  dimension: tiempo_triage_radicada {
    type: number
    sql: ${TABLE}.tiempo_triage_radicada ;;
  }
  dimension: tiempo_triage_reclamo_dian {
    type: number
    sql: ${TABLE}.tiempo_triage_reclamo_dian ;;
  }
  dimension: tiempo_triage_validada {
    type: number
    sql: ${TABLE}.tiempo_triage_validada ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
