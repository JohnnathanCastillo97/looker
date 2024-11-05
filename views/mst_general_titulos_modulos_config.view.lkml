view: mst_general_titulos_modulos_config {
  sql_table_name: bd_ic_cliente.mst_general_titulos_modulos_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: class_colums {
    type: string
    sql: ${TABLE}.class_colums ;;
  }
  dimension: class_tag {
    type: string
    sql: ${TABLE}.class_tag ;;
  }
  dimension: custom_position_html {
    type: string
    sql: ${TABLE}.custom_position_html ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: icon {
    type: string
    sql: ${TABLE}.icon ;;
  }
  dimension: id_maestra {
    type: number
    sql: ${TABLE}.id_maestra ;;
  }
  dimension: name_tag {
    type: string
    sql: ${TABLE}.name_tag ;;
  }
  dimension: onchange {
    type: string
    sql: ${TABLE}.onchange ;;
  }
  dimension: required {
    type: yesno
    sql: ${TABLE}.required ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
