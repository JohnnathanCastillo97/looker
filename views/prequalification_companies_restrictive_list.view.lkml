view: prequalification_companies_restrictive_list {
  sql_table_name: bd_ic_cliente.prequalification_companies_restrictive_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_precalificacion {
    type: number
    sql: ${TABLE}.cod_precalificacion ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension_group: fecha_listas {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_listas ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: lista {
    type: string
    sql: ${TABLE}.lista ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: no_doc {
    type: string
    sql: ${TABLE}.no_doc ;;
  }
  dimension: tipo_identificacion {
    type: string
    sql: ${TABLE}.tipo_identificacion ;;
  }
  dimension: tipo_incidente {
    type: string
    sql: ${TABLE}.tipo_incidente ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
