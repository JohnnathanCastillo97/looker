view: fn_reporte_general_proveedores_cenit {
  sql_table_name: bd_ic_cliente.fn_reporte_general_proveedores_cenit ;;

  dimension: accionistas {
    type: string
    sql: ${TABLE}.accionistas ;;
  }
  dimension: actividad_principal {
    type: string
    sql: ${TABLE}.actividad_principal ;;
  }
  dimension: actividades_secundarias {
    type: string
    sql: ${TABLE}.actividades_secundarias ;;
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
  dimension: contribuyente {
    type: string
    sql: ${TABLE}.contribuyente ;;
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
  dimension: estado_base_suplos {
    type: string
    sql: ${TABLE}.estado_base_suplos ;;
  }
  dimension: identificacion {
    type: string
    sql: ${TABLE}.identificacion ;;
  }
  dimension: listas_restrictivas {
    type: string
    sql: ${TABLE}.listas_restrictivas ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }
  dimension: razon_social {
    type: string
    sql: ${TABLE}.razon_social ;;
  }
  dimension: regimen {
    type: string
    sql: ${TABLE}.regimen ;;
  }
  dimension: representante_legal {
    type: string
    sql: ${TABLE}.representante_legal ;;
  }
  dimension: retefuente {
    type: string
    sql: ${TABLE}.retefuente ;;
  }
  dimension: sector_economico {
    type: string
    sql: ${TABLE}.sector_economico ;;
  }
  dimension: tamanio_empresa {
    type: string
    sql: ${TABLE}.tamanio_empresa ;;
  }
  dimension: telefono {
    type: string
    sql: ${TABLE}.telefono ;;
  }
  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }
  measure: count {
    type: count
  }
}
