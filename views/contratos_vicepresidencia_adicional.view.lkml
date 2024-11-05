view: contratos_vicepresidencia_adicional {
  sql_table_name: bd_ic_cliente.contratos_vicepresidencia_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_contratos {
    type: number
    sql: ${TABLE}.id_contratos ;;
  }
  dimension: id_direccion {
    type: number
    sql: ${TABLE}.id_direccion ;;
  }
  dimension: id_director {
    type: number
    sql: ${TABLE}.id_director ;;
  }
  dimension: id_jefe {
    type: number
    sql: ${TABLE}.id_jefe ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: usuario_creacion {
    type: number
    sql: ${TABLE}.usuario_creacion ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
