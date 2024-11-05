view: solicitud_pos_servicio_almacen {
  sql_table_name: bd_ic_cliente.solicitud_pos_servicio_almacen ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: almacen {
    type: string
    sql: ${TABLE}.almacen ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_pos_servicio {
    type: number
    sql: ${TABLE}.id_pos_servicio ;;
  }
  dimension: sitio {
    type: string
    sql: ${TABLE}.sitio ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
