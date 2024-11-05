view: fn_solfin_reporte_indicadores_italcol {
  sql_table_name: bd_ic_cliente.fn_solfin_reporte_indicadores_italcol ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: causacion_directa {
    type: string
    sql: ${TABLE}.Causacion_Directa ;;
  }
  dimension: comercial {
    type: string
    sql: ${TABLE}.Comercial ;;
  }
  dimension: comercial_fletes {
    type: string
    sql: ${TABLE}.Comercial_Fletes ;;
  }
  dimension: contratos {
    type: string
    sql: ${TABLE}.Contratos ;;
  }
  dimension: fecha_radicacion {
    type: string
    sql: ${TABLE}.fecha_radicacion ;;
  }
  dimension: fecha_radicacion_int {
    type: string
    sql: ${TABLE}.fecha_radicacion_int ;;
  }
  dimension: fuente_radicacion_email {
    type: string
    sql: ${TABLE}.Fuente_radicacion_email ;;
  }
  dimension: fuente_radicacion_manual_italcol {
    type: string
    sql: ${TABLE}.Fuente_radicacion_manual_italcol ;;
  }
  dimension: fuente_radicacion_manual_proveedor {
    type: string
    sql: ${TABLE}.Fuente_radicacion_manual_proveedor ;;
  }
  dimension: fuente_radicacion_rapido_proveedor {
    type: string
    sql: ${TABLE}.Fuente_radicacion_rapido_proveedor ;;
  }
  dimension: importaciones {
    type: string
    sql: ${TABLE}.Importaciones ;;
  }
  dimension: num_fact_ajustes_no_aut {
    type: string
    sql: ${TABLE}.Num_fact_ajustes_no_aut ;;
  }
  dimension: num_fact_archivada {
    type: string
    sql: ${TABLE}.Num_fact_archivada ;;
  }
  dimension: num_fact_contabilizada {
    type: string
    sql: ${TABLE}.Num_fact_contabilizada ;;
  }
  dimension: num_fact_correctamente {
    type: string
    sql: ${TABLE}.Num_fact_correctamente ;;
  }
  dimension: num_fact_cruzada {
    type: string
    sql: ${TABLE}.Num_fact_cruzada ;;
  }
  dimension: num_fact_cruzada_nc {
    type: string
    sql: ${TABLE}.Num_fact_cruzada_nc ;;
  }
  dimension: num_fact_devt {
    type: string
    sql: ${TABLE}.Num_fact_devt ;;
  }
  dimension: num_fact_devuelta_almacenista {
    type: string
    sql: ${TABLE}.Num_fact_devuelta_almacenista ;;
  }
  dimension: num_fact_devuelta_comprador {
    type: string
    sql: ${TABLE}.Num_fact_devuelta_comprador ;;
  }
  dimension: num_fact_diff_prov {
    type: string
    sql: ${TABLE}.Num_fact_diff_prov ;;
  }
  dimension: num_fact_gest {
    type: string
    sql: ${TABLE}.Num_fact_gest ;;
  }
  dimension: num_fact_gest_flujo {
    type: string
    sql: ${TABLE}.Num_fact_gest_flujo ;;
  }
  dimension: num_fact_oc_no_confirmada {
    type: string
    sql: ${TABLE}.Num_fact_oc_no_confirmada ;;
  }
  dimension: num_fact_pagada {
    type: string
    sql: ${TABLE}.Num_fact_pagada ;;
  }
  dimension: num_fact_para_cruzar {
    type: string
    sql: ${TABLE}.Num_fact_para_cruzar ;;
  }
  dimension: num_fact_pendiente_contabilidad {
    type: string
    sql: ${TABLE}.Num_fact_pendiente_contabilidad ;;
  }
  dimension: num_fact_pendiente_contabilidad_nd {
    type: string
    sql: ${TABLE}.Num_fact_pendiente_contabilidad_nd ;;
  }
  dimension: num_fact_pendiente_entrada_ctp {
    type: string
    sql: ${TABLE}.Num_fact_Pendiente_entrada_ctp ;;
  }
  dimension: num_fact_por_verificar_aprobar {
    type: string
    sql: ${TABLE}.Num_fact_por_verificar_aprobar ;;
  }
  dimension: num_fact_radicada {
    type: string
    sql: ${TABLE}.Num_fact_radicada ;;
  }
  dimension: num_fact_reclamada {
    type: string
    sql: ${TABLE}.Num_fact_reclamada ;;
  }
  dimension: num_fact_reclamo {
    type: string
    sql: ${TABLE}.Num_fact_reclamo ;;
  }
  dimension: num_fact_reclamo_dian {
    type: string
    sql: ${TABLE}.Num_fact_reclamo_dian ;;
  }
  dimension: num_fact_registrada {
    type: string
    sql: ${TABLE}.Num_fact_Registrada ;;
  }
  dimension: num_fact_validacion_flujo {
    type: string
    sql: ${TABLE}.Num_fact_validacion_flujo ;;
  }
  dimension: num_fact_validada {
    type: string
    sql: ${TABLE}.Num_fact_validada ;;
  }
  dimension: servicio {
    type: string
    sql: ${TABLE}.Servicio ;;
  }
  dimension: tiempo_contabilizada_cruzada {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_cruzada ;;
  }
  dimension: tiempo_contabilizada_cruzada_nc {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_cruzada_nc ;;
  }
  dimension: tiempo_contabilizada_pagada {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_pagada ;;
  }
  dimension: tiempo_contabilizada_para_cruzar {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_para_cruzar ;;
  }
  dimension: tiempo_contabilizada_pen_cont_nc {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_pen_cont_nc ;;
  }
  dimension: tiempo_contabilizada_validada {
    type: string
    sql: ${TABLE}.tiempo_contabilizada_validada ;;
  }
  dimension: tiempo_devolver_provee_archivada {
    type: string
    sql: ${TABLE}.tiempo_devolver_provee_archivada ;;
  }
  dimension: tiempo_devolver_provee_italcol {
    type: string
    sql: ${TABLE}.tiempo_devolver_provee_italcol ;;
  }
  dimension: tiempo_pen_cont_archivada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_archivada ;;
  }
  dimension: tiempo_pen_cont_contabilizada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_contabilizada ;;
  }
  dimension: tiempo_pen_cont_cruzada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_cruzada ;;
  }
  dimension: tiempo_pen_cont_cruzada_nc {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_cruzada_nc ;;
  }
  dimension: tiempo_pen_cont_ctp_contabilizada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_contabilizada ;;
  }
  dimension: tiempo_pen_cont_ctp_cruzada_nc {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_cruzada_nc ;;
  }
  dimension: tiempo_pen_cont_ctp_devuelta_alm {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_devuelta_alm ;;
  }
  dimension: tiempo_pen_cont_ctp_devueltra_com {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_devueltra_com ;;
  }
  dimension: tiempo_pen_cont_ctp_pagada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_pagada ;;
  }
  dimension: tiempo_pen_cont_ctp_para_cruzar {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_para_cruzar ;;
  }
  dimension: tiempo_pen_cont_ctp_pen_con {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_pen_con ;;
  }
  dimension: tiempo_pen_cont_ctp_pen_con_nc {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_ctp_pen_con_nc ;;
  }
  dimension: tiempo_pen_cont_devuelta_alm {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_devuelta_alm ;;
  }
  dimension: tiempo_pen_cont_devuelta_comp {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_devuelta_comp ;;
  }
  dimension: tiempo_pen_cont_devuelta_provee {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_devuelta_provee ;;
  }
  dimension: tiempo_pen_cont_pagada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_pagada ;;
  }
  dimension: tiempo_pen_cont_para_cruzar {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_para_cruzar ;;
  }
  dimension: tiempo_pen_cont_pen_cont_nc {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_pen_cont_nc ;;
  }
  dimension: tiempo_pen_cont_reclamo_dian {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_reclamo_dian ;;
  }
  dimension: tiempo_pen_cont_validada {
    type: string
    sql: ${TABLE}.tiempo_pen_cont_validada ;;
  }
  dimension: tiempo_radicada_archivada {
    type: string
    sql: ${TABLE}.tiempo_radicada_archivada ;;
  }
  dimension: tiempo_radicada_contabilizada {
    type: string
    sql: ${TABLE}.tiempo_radicada_contabilizada ;;
  }
  dimension: tiempo_radicada_cruzada {
    type: string
    sql: ${TABLE}.tiempo_radicada_cruzada ;;
  }
  dimension: tiempo_radicada_cruzada_nc {
    type: string
    sql: ${TABLE}.tiempo_radicada_cruzada_nc ;;
  }
  dimension: tiempo_radicada_devuelta_provee {
    type: string
    sql: ${TABLE}.tiempo_radicada_devuelta_provee ;;
  }
  dimension: tiempo_radicada_pagada {
    type: string
    sql: ${TABLE}.tiempo_radicada_pagada ;;
  }
  dimension: tiempo_radicada_pen_cont {
    type: string
    sql: ${TABLE}.tiempo_radicada_pen_cont ;;
  }
  dimension: tiempo_radicada_pen_cont_nc {
    type: string
    sql: ${TABLE}.tiempo_radicada_pen_cont_nc ;;
  }
  dimension: tiempo_radicada_reclamo_dian {
    type: string
    sql: ${TABLE}.tiempo_radicada_reclamo_dian ;;
  }
  dimension: tiempo_radicada_validada {
    type: string
    sql: ${TABLE}.tiempo_radicada_validada ;;
  }
  dimension: tiempo_reactivacion_pen_con {
    type: string
    sql: ${TABLE}.tiempo_reactivacion_pen_con ;;
  }
  dimension: tiempo_reactivacion_triage {
    type: string
    sql: ${TABLE}.tiempo_reactivacion_triage ;;
  }
  dimension: tiempo_triage_archivada {
    type: string
    sql: ${TABLE}.tiempo_triage_archivada ;;
  }
  dimension: tiempo_triage_contabilidad {
    type: string
    sql: ${TABLE}.tiempo_triage_contabilidad ;;
  }
  dimension: tiempo_triage_cruzada {
    type: string
    sql: ${TABLE}.tiempo_triage_cruzada ;;
  }
  dimension: tiempo_triage_cruzada_nc {
    type: string
    sql: ${TABLE}.tiempo_triage_cruzada_nc ;;
  }
  dimension: tiempo_triage_devuelta_provee {
    type: string
    sql: ${TABLE}.tiempo_triage_devuelta_provee ;;
  }
  dimension: tiempo_triage_pagada {
    type: string
    sql: ${TABLE}.tiempo_triage_pagada ;;
  }
  dimension: tiempo_triage_para_cruzar {
    type: string
    sql: ${TABLE}.tiempo_triage_para_cruzar ;;
  }
  dimension: tiempo_triage_pen_cont {
    type: string
    sql: ${TABLE}.tiempo_triage_pen_cont ;;
  }
  dimension: tiempo_triage_pen_cont_nc {
    type: string
    sql: ${TABLE}.tiempo_triage_pen_cont_nc ;;
  }
  dimension: tiempo_triage_pen_ctp {
    type: string
    sql: ${TABLE}.tiempo_triage_pen_ctp ;;
  }
  dimension: tiempo_triage_por_verificar {
    type: string
    sql: ${TABLE}.tiempo_triage_por_verificar ;;
  }
  dimension: tiempo_triage_radicada {
    type: string
    sql: ${TABLE}.tiempo_triage_radicada ;;
  }
  dimension: tiempo_triage_reclamo_dian {
    type: string
    sql: ${TABLE}.tiempo_triage_reclamo_dian ;;
  }
  dimension: tiempo_triage_validada {
    type: string
    sql: ${TABLE}.tiempo_triage_validada ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
