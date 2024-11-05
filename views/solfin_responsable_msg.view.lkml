view: solfin_responsable_msg {
  sql_table_name: bd_ic_cliente.solfin_responsable_msg ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cod_empresa {
    type: string
    sql: ${TABLE}.cod_empresa ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_perfil {
    type: number
    sql: ${TABLE}.id_perfil ;;
  }
  dimension: origen_mensaje {
    type: string
    sql: ${TABLE}.origen_mensaje ;;
  }
  dimension: responsables {
    type: string
    sql: ${TABLE}.responsables ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
