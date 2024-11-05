view: paa_ejercicio_usuarios_creador {
  sql_table_name: bd_ic_cliente.paa_ejercicio_usuarios_creador ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aprobadores {
    type: string
    sql: ${TABLE}.aprobadores ;;
  }
  dimension: centro_gestor {
    type: number
    sql: ${TABLE}.centro_gestor ;;
  }
  dimension: destinacion {
    type: string
    sql: ${TABLE}.destinacion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_paa {
    type: number
    sql: ${TABLE}.id_paa ;;
  }
  dimension: tipo_aprob {
    type: string
    sql: ${TABLE}.tipo_aprob ;;
  }
  dimension: usuario_creador {
    type: number
    sql: ${TABLE}.usuario_creador ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
