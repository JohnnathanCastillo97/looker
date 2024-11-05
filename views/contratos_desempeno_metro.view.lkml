view: contratos_desempeno_metro {
  sql_table_name: bd_ic_cliente.contratos_desempeno_metro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }
  dimension: clase_evaluacion {
    type: string
    sql: ${TABLE}.clase_evaluacion ;;
  }
  dimension: evalprinc {
    type: number
    sql: ${TABLE}.evalprinc ;;
  }
  dimension_group: fecha_evaluacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_evaluacion ;;
  }
  dimension: formulario {
    type: string
    sql: ${TABLE}.formulario ;;
  }
  dimension: id_contrato {
    type: number
    sql: ${TABLE}.id_contrato ;;
  }
  dimension: proveedor {
    type: number
    sql: ${TABLE}.proveedor ;;
  }
  dimension: provsecundario {
    type: number
    sql: ${TABLE}.provsecundario ;;
  }
  dimension: puntaje {
    type: number
    sql: ${TABLE}.puntaje ;;
  }
  dimension: puntaje_amb {
    type: number
    sql: ${TABLE}.puntaje_amb ;;
  }
  dimension: puntaje_cantidad {
    type: number
    sql: ${TABLE}.puntaje_cantidad ;;
  }
  dimension: puntaje_doc {
    type: number
    sql: ${TABLE}.puntaje_doc ;;
  }
  dimension: puntaje_gar {
    type: number
    sql: ${TABLE}.puntaje_gar ;;
  }
  dimension: puntaje_plazo {
    type: number
    sql: ${TABLE}.puntaje_plazo ;;
  }
  dimension: puntaje_sst {
    type: number
    sql: ${TABLE}.puntaje_sst ;;
  }
  dimension: puntaje_tec {
    type: number
    sql: ${TABLE}.puntaje_tec ;;
  }
  dimension: usuario_evaluador {
    type: number
    sql: ${TABLE}.usuario_evaluador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
