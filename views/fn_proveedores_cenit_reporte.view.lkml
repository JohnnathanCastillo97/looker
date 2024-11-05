view: fn_proveedores_cenit_reporte {
  sql_table_name: bd_ic_cliente.fn_proveedores_cenit_reporte ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: accionistas {
    type: string
    sql: ${TABLE}.accionistas ;;
  }
  dimension: actividad_principal {
    type: string
    sql: ${TABLE}.actividad_principal ;;
  }
  dimension: actividades_cenit {
    type: string
    sql: ${TABLE}.actividades_cenit ;;
  }
  dimension: actividades_secundaria {
    type: string
    sql: ${TABLE}.actividades_secundaria ;;
  }
  dimension: cedula_representante {
    type: string
    sql: ${TABLE}.cedula_representante ;;
  }
  dimension: ciudad {
    type: string
    sql: ${TABLE}.ciudad ;;
  }
  dimension: contactos {
    type: string
    sql: ${TABLE}.contactos ;;
  }
  dimension: correo_representante {
    type: string
    sql: ${TABLE}.correo_representante ;;
  }
  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }
  dimension: direccion {
    type: string
    sql: ${TABLE}.direccion ;;
  }
  dimension: estado_aprobacion_cenit {
    type: string
    sql: ${TABLE}.estado_aprobacion_cenit ;;
  }
  dimension: estado_base_cenit {
    type: string
    sql: ${TABLE}.estado_base_cenit ;;
  }
  dimension: fecha_analisis_contraparte {
    type: string
    sql: ${TABLE}.fecha_analisis_contraparte ;;
  }
  dimension: id_empresa {
    type: string
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: info_adicional {
    type: string
    sql: ${TABLE}.info_adicional ;;
  }
  dimension: listas_restrictivas {
    type: string
    sql: ${TABLE}.listas_restrictivas ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.nit ;;
  }
  dimension: puede_participar_proceso {
    type: string
    sql: ${TABLE}.puede_participar_proceso ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: representante_legal {
    type: string
    sql: ${TABLE}.representante_legal ;;
  }
  dimension: sector_economico {
    type: string
    sql: ${TABLE}.sector_economico ;;
  }
  dimension: tamano_empresa {
    type: string
    sql: ${TABLE}.tamano_empresa ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
