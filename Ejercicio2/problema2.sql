SELECT 
    ciudades.nombre AS Ciudad,
    paises.nombre AS Pais
FROM ciudades
    INNER JOIN paises ON ciudades.id_pais = paises.id
ORDER BY 
        paises.nombre ASC,
        ciudades.nombre ASC;