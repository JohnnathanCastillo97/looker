view: solfin_cierres_radicacion {
  sql_table_name: bd_ic_cliente.solfin_cierres_radicacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abril {
    type: string
    sql: ${TABLE}.Abril ;;
  }
  dimension: agosto {
    type: string
    sql: ${TABLE}.Agosto ;;
  }
  dimension: diciembre {
    type: string
    sql: ${TABLE}.Diciembre ;;
  }
  dimension: enero {
    type: string
    sql: ${TABLE}.Enero ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: febrero {
    type: string
    sql: ${TABLE}.Febrero ;;
  }
  dimension_group: fecha_registro {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_registro ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: julio {
    type: string
    sql: ${TABLE}.Julio ;;
  }
  dimension: junio {
    type: string
    sql: ${TABLE}.Junio ;;
  }
  dimension: marzo {
    type: string
    sql: ${TABLE}.Marzo ;;
  }
  dimension: mayo {
    type: string
    sql: ${TABLE}.Mayo ;;
  }
  dimension: noviembre {
    type: string
    sql: ${TABLE}.Noviembre ;;
  }
  dimension: octubre {
    type: string
    sql: ${TABLE}.Octubre ;;
  }
  dimension: septiembre {
    type: string
    sql: ${TABLE}.Septiembre ;;
  }
  dimension: usuario_registro {
    type: string
    sql: ${TABLE}.usuario_registro ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
