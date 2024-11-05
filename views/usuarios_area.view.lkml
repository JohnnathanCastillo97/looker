view: usuarios_area {
  sql_table_name: bd_ic_cliente.usuarios_area ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: codigo {
    type: number
    sql: ${TABLE}.codigo ;;
  }
  dimension: compra_directa {
    type: string
    sql: ${TABLE}.compra_directa ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: direccion_vice {
    type: number
    sql: ${TABLE}.direccion_vice ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension_group: fecha_creacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_creacion ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_coordinador {
    type: number
    sql: ${TABLE}.id_coordinador ;;
  }
  dimension: id_gerencia {
    type: number
    sql: ${TABLE}.id_gerencia ;;
  }
  dimension: id_gerente {
    type: number
    sql: ${TABLE}.id_gerente ;;
  }
  dimension: id_jefe {
    type: number
    sql: ${TABLE}.id_jefe ;;
  }
  dimension: id_superintendencia {
    type: number
    sql: ${TABLE}.id_superintendencia ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: ordenador_gasto {
    type: number
    sql: ${TABLE}.ordenador_gasto ;;
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
