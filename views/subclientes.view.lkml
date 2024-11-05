view: subclientes {
  sql_table_name: bd_ic_cliente.subclientes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave_table2 {
    type: string
    sql: ${TABLE}.Clave_table2 ;;
  }
  dimension: contacto {
    type: string
    sql: ${TABLE}.contacto ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: descripcion1 {
    type: string
    sql: ${TABLE}.Descripcion1 ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: habilita_politica_pago {
    type: string
    sql: ${TABLE}.habilita_politica_pago ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_region {
    type: number
    sql: ${TABLE}.id_region ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: integracion_sap {
    type: string
    sql: ${TABLE}.integracion_sap ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, subclientes_revision_legal.count]
  }
}
