view: evaluacion_cargamasiva_desempenyo {
  sql_table_name: bd_ic_cliente.evaluacion_cargamasiva_desempenyo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contacto_proveedor1 {
    type: string
    sql: ${TABLE}.contactoProveedor1 ;;
  }
  dimension: contacto_proveedor2 {
    type: string
    sql: ${TABLE}.contactoProveedor2 ;;
  }
  dimension: contacto_proveedor3 {
    type: string
    sql: ${TABLE}.contactoProveedor3 ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: criterio_administrativo {
    type: string
    sql: ${TABLE}.criterioAdministrativo ;;
  }
  dimension: criterio_hse {
    type: string
    sql: ${TABLE}.criterioHSE ;;
  }
  dimension: criterio_regimen {
    type: string
    sql: ${TABLE}.criterioRegimen ;;
  }
  dimension: criterio_tecnico {
    type: string
    sql: ${TABLE}.criterioTecnico ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: evaluador_criterio_adm {
    type: string
    sql: ${TABLE}.evaluadorCriterioAdm ;;
  }
  dimension: evaluador_criterio_adm_ii {
    type: string
    sql: ${TABLE}.evaluadorCriterioAdmII ;;
  }
  dimension: evaluador_criterio_entrega {
    type: string
    sql: ${TABLE}.evaluadorCriterioEntrega ;;
  }
  dimension: evaluador_criterio_esp {
    type: string
    sql: ${TABLE}.evaluadorCriterioEsp ;;
  }
  dimension: evaluador_criterio_regimen {
    type: string
    sql: ${TABLE}.evaluadorCriterioRegimen ;;
  }
  dimension: evaluador_criterio_regimen_ii {
    type: string
    sql: ${TABLE}.evaluadorCriterioRegimenII ;;
  }
  dimension: evaluador_criterio_tecnico {
    type: string
    sql: ${TABLE}.evaluadorCriterioTecnico ;;
  }
  dimension: evaluador_criterio_tecnico_ii {
    type: string
    sql: ${TABLE}.evaluadorCriterioTecnicoII ;;
  }
  dimension: evaluador_hse {
    type: string
    sql: ${TABLE}.evaluadorHSE ;;
  }
  dimension: evaluador_hseii {
    type: string
    sql: ${TABLE}.evaluadorHSEII ;;
  }
  dimension: evaluador_req_tecnico {
    type: string
    sql: ${TABLE}.evaluadorReqTecnico ;;
  }
  dimension: evaluador_servicio_cliente {
    type: string
    sql: ${TABLE}.evaluadorServicioCliente ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_ejercicio {
    type: number
    sql: ${TABLE}.id_ejercicio ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: nombre_usuario_proveedor1 {
    type: string
    sql: ${TABLE}.nombreUsuarioProveedor1 ;;
  }
  dimension: nombre_usuario_proveedor2 {
    type: string
    sql: ${TABLE}.nombreUsuarioProveedor2 ;;
  }
  dimension: nombre_usuario_proveedor3 {
    type: string
    sql: ${TABLE}.nombreUsuarioProveedor3 ;;
  }
  dimension: numero_contrato {
    type: string
    sql: ${TABLE}.numeroContrato ;;
  }
  dimension: numero_ordenes {
    type: string
    sql: ${TABLE}.numeroOrdenes ;;
  }
  dimension: observaciones {
    type: string
    sql: ${TABLE}.observaciones ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }
  dimension: registro_errores {
    type: string
    sql: ${TABLE}.registroErrores ;;
  }
  dimension: tipo_evaluacion {
    type: string
    sql: ${TABLE}.tipoEvaluacion ;;
  }
  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_at ;;
  }
  dimension: usuario_registra {
    type: number
    sql: ${TABLE}.usuario_registra ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
