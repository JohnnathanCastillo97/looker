view: paa_linea_material {
  sql_table_name: bd_ic_cliente.paa_linea_material ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }
  dimension: centro {
    type: string
    sql: ${TABLE}.centro ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: id_linea {
    type: number
    sql: ${TABLE}.id_linea ;;
  }
  dimension: id_mst_mat {
    type: number
    sql: ${TABLE}.id_mst_mat ;;
  }
  dimension: id_seq_linea_ant {
    type: string
    sql: ${TABLE}.id_seq_linea_ant ;;
  }
  dimension: integrado {
    type: number
    sql: ${TABLE}.integrado ;;
  }
  dimension: sociedad {
    type: string
    sql: ${TABLE}.sociedad ;;
  }
  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.unidad_medida ;;
  }
  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }
  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valor_unitario ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
