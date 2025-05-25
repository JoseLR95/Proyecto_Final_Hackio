CREATE TABLE eventos (
   ball_receipt_outcome VARCHAR(255),                     -- Ejemplo: 'Incomplete'
   ball_recovery_recovery_failure BOOLEAN,                -- Ejemplo: True
   block_deflection BOOLEAN,                              -- Ejemplo: True
   clearance_aerial_won BOOLEAN,                          -- Ejemplo: True
   clearance_body_part VARCHAR(255),                      -- Ejemplo: 'Left Foot'
   clearance_head BOOLEAN,                                -- Ejemplo: True
   clearance_left_foot BOOLEAN,                           -- Ejemplo: True
   clearance_right_foot BOOLEAN,                          -- Ejemplo: True
   counterpress BOOLEAN,                                  -- Ejemplo: True
   dribble_no_touch BOOLEAN,                              -- Ejemplo: True
   dribble_nutmeg BOOLEAN,                                -- Ejemplo: True
   dribble_outcome VARCHAR(255),                          -- Ejemplo: 'Complete'
   duel_outcome VARCHAR(255),                             -- Ejemplo: 'Success In Play'
   duel_type VARCHAR(255),                                -- Ejemplo: 'Aerial Lost'
   duration FLOAT,                                        -- Ejemplo: 0.0
   foul_committed_advantage BOOLEAN,                      -- Ejemplo: True
   foul_committed_card VARCHAR(255),                      -- Ejemplo: 'Yellow Card'
   foul_committed_type VARCHAR(255),                      -- Ejemplo: 'Handball'
   foul_won_advantage BOOLEAN,                            -- Ejemplo: True
   foul_won_defensive BOOLEAN,                            -- Ejemplo: True
   goalkeeper_body_part VARCHAR(255),                     -- Ejemplo: 'Left Foot'
   goalkeeper_outcome VARCHAR(255),                       -- Ejemplo: 'Claim'
   goalkeeper_position VARCHAR(255),                      -- Ejemplo: 'Set'
   goalkeeper_technique VARCHAR(255),                     -- Ejemplo: 'Diving'
   goalkeeper_type VARCHAR(255),                          -- Ejemplo: 'Keeper Sweeper'
   id VARCHAR(36) PRIMARY KEY,                            -- Ejemplo: 'd6a62760-9403-4eb3-901f-4feea0739225'
   interception_outcome VARCHAR(255),                     -- Ejemplo: 'Won'
   match_id BIGINT,                                       -- Ejemplo: 3825848
   minute INTEGER,                                        -- Ejemplo: 0
   miscontrol_aerial_won BOOLEAN,                         -- Ejemplo: True
   out BOOLEAN,                                           -- Ejemplo: True
   pass_aerial_won BOOLEAN,                               -- Ejemplo: True
   pass_angle FLOAT,                                      -- Ejemplo: 1.4191909
   pass_assisted_shot_id VARCHAR(36),                     -- Ejemplo: 'cc4063a7-1677-4b93-9e1b-87fd42d4e03e'
   pass_body_part VARCHAR(255),                           -- Ejemplo: 'Left Foot'
   pass_cross BOOLEAN,                                    -- Ejemplo: True
   pass_cut_back BOOLEAN,                                 -- Ejemplo: True
   pass_deflected BOOLEAN,                                -- Ejemplo: True
   pass_goal_assist BOOLEAN,                              -- Ejemplo: True
   pass_height VARCHAR(255),                              -- Ejemplo: 'Ground Pass'
   pass_inswinging BOOLEAN,                               -- Ejemplo: True
   pass_length FLOAT,                                     -- Ejemplo: 7.283543
   pass_miscommunication BOOLEAN,                         -- Ejemplo: True
   pass_no_touch BOOLEAN,                                 -- Ejemplo: True
   pass_outcome VARCHAR(255),                             -- Ejemplo: 'Out'
   pass_outswinging BOOLEAN,                              -- Ejemplo: True
   pass_recipient VARCHAR(255),                           -- Ejemplo: 'Borja González Tomás'
   pass_recipient_id BIGINT,                              -- Ejemplo: 6566.0 (BIGINT para float64 ID)
   pass_shot_assist BOOLEAN,                              -- Ejemplo: True
   pass_straight BOOLEAN,                                 -- Ejemplo: True
   pass_switch BOOLEAN,                                   -- Ejemplo: True
   pass_technique VARCHAR(255),                           -- Ejemplo: 'Through Ball'
   pass_through_ball BOOLEAN,                             -- Ejemplo: True
   pass_type VARCHAR(255),                                -- Ejemplo: 'Kick Off'
   period INTEGER,                                        -- Ejemplo: 1
   play_pattern VARCHAR(255),                             -- Ejemplo: 'Regular Play'
   nombre_completo_jugador VARCHAR(255),                                   -- Ejemplo: 'Adrián González Morales'
   playerid BIGINT,                                      -- Ejemplo: 6557.0 (BIGINT para float64 ID)
   position VARCHAR(255),                                 -- Ejemplo: 'Center Attacking Midfield'
   possession INTEGER,                                    -- Ejemplo: 1
   possession_team VARCHAR(255),                          -- Ejemplo: 'Levante UD'
   possession_team_id BIGINT,                             -- Ejemplo: 221
   second INTEGER,                                        -- Ejemplo: 0
   shot_aerial_won BOOLEAN,                               -- Ejemplo: True
   shot_body_part VARCHAR(255),                           -- Ejemplo: 'Head'
   shot_deflected BOOLEAN,                                -- Ejemplo: True
   shot_key_pass_id VARCHAR(36),                          -- Ejemplo: '1572c8dd-57a0-4c52-bc67-78deb35109a5'
   shot_outcome VARCHAR(255),                             -- Ejemplo: 'Off T'
   shot_statsbomb_xg FLOAT,                               -- Ejemplo: 0.10042935
   shot_technique VARCHAR(255),                           -- Ejemplo: 'Normal'
   shot_type VARCHAR(255),                                -- Ejemplo: 'Open Play'
   shot_first_time BOOLEAN,
   club VARCHAR(255),                                     -- Ejemplo: 'Levante UD'
   clubid BIGINT,                                        -- Ejemplo: 221
   timestamp VARCHAR(30),                                 -- Ejemplo: '00:00:00.000'
   type VARCHAR(255),                                     -- Ejemplo: 'Starting XI'
   under_pressure BOOLEAN,                                -- Ejemplo: True
   block_offensive BOOLEAN,                               -- Ejemplo: True
   foul_committed_offensive BOOLEAN,                      -- Ejemplo: True
   shot_one_on_one BOOLEAN,                               -- Ejemplo: True
   clearance_other BOOLEAN,                               -- Ejemplo: True
   dribble_overrun BOOLEAN,                               -- Ejemplo: True
   block_save_block BOOLEAN,                              -- Ejemplo: True
   shot_open_goal BOOLEAN,                                -- Ejemplo: True
   foul_committed_penalty BOOLEAN,                        -- Ejemplo: True
   foul_won_penalty BOOLEAN,                              -- Ejemplo: True
   goalkeeper_punched_out BOOLEAN,                        -- Ejemplo: True
   ball_recovery_offensive BOOLEAN,                       -- Ejemplo: True
   goalkeeper_success_in_play BOOLEAN,                    -- Ejemplo: True
   goalkeeper_shot_saved_off_target BOOLEAN,              -- Ejemplo: True
   shot_saved_off_target BOOLEAN,                         -- Ejemplo: True
   shot_redirect BOOLEAN,                                 -- Ejemplo: True
   goalkeeper_lost_out BOOLEAN,                           -- Ejemplo: True
   goalkeeper_lost_in_play BOOLEAN,                       -- Ejemplo: True
   goalkeeper_shot_saved_to_post BOOLEAN,                 -- Ejemplo: True
   shot_saved_to_post BOOLEAN,                            -- Ejemplo: True
   shot_follows_dribble BOOLEAN,                          -- Ejemplo: True
   goalkeeper_success_out BOOLEAN,                        -- Ejemplo: True
   type_id INTEGER,                                       -- Ejemplo: 1
   carry_end_location_x FLOAT,                            -- Ejemplo: 32.3
   carry_end_location_y FLOAT,                            -- Ejemplo: 58.4
   goalkeeper_end_location_x FLOAT,                       -- Ejemplo: 1.4
   goalkeeper_end_location_y FLOAT,                       -- Ejemplo: 38.3
   location_x FLOAT,                                      -- Ejemplo: 61.0
   location_y FLOAT,                                      -- Ejemplo: 40.1
   pass_end_location_x FLOAT,                             -- Ejemplo: 62.1
   pass_end_location_y FLOAT,                             -- Ejemplo: 47.3
   shot_end_location_x FLOAT,                             -- Ejemplo: 120.0
   shot_end_location_y FLOAT,                             -- Ejemplo: 41.5
   shot_end_location_z FLOAT                              -- Ejemplo: 5.9
);
CREATE TABLE Jugadores (
    playerID BIGINT PRIMARY KEY,                -- Ejemplo: np.float64(6332.0) -> Se asume INTEGER
    Nombre_Jugador VARCHAR(255),                 -- Ejemplo: 'Thomas Vermaelen'
    Nombre_Completo_Jugador VARCHAR(255),        -- Ejemplo: 'Thomas Vermaelen'
    Lugar_Nacimiento VARCHAR(255),               -- Ejemplo: 'Luxeuil-les-Bains'
    Fecha_Nacimiento DATE,                       -- Ejemplo: '29/10/1983' (se asume conversión a DATE)
    Pais_Nacimiento VARCHAR(255),                -- Ejemplo: 'Francia'
    Edad FLOAT,                                -- Ejemplo: np.int64(41)
    Altura DECIMAL,                          		-- Ejemplo: '1,89' (VARCHAR para formato con coma)
    Pie_Dominante VARCHAR(50),                   -- Ejemplo: 'Izquierdo'
    Equipo_Internacional VARCHAR(255),           -- Ejemplo: 'Francia'
    Partidos_Internacionales BIGINT,            -- Ejemplo: np.float64(5.0)
    Goles_Internacionales BIGINT,               -- Ejemplo: np.float64(0.0)
    Pais VARCHAR(255),                           -- Ejemplo: 'Francia' (Nacionalidad actual)
    Segundo_Pais VARCHAR(255),                   -- Ejemplo: 'España'
    Club VARCHAR(255),                           -- Ejemplo: 'Barcelona' (Nombre del club actual)
    clubID BIGINT,                              -- Ejemplo: np.float64(217.0) -> Se asume INTEGER
    Posicion_Principal VARCHAR(255),             -- Ejemplo: 'Lateral izquierdo'
    Posicion_Secundaria VARCHAR(255),            -- Ejemplo: 'Defensa central'
    Posicion_Terciaria VARCHAR(255),             -- Ejemplo: 'Interior izquierdo'
    Partidos_jugados		              DECIMAL,
    Titularidades                         DECIMAL,
	Minutos                               DECIMAL,
	Goles                                 DECIMAL,
	Asistencias                           DECIMAL,
	Goles_sin_penaltis                    DECIMAL,
	Amarillas                             DECIMAL,
	Rojas                                 DECIMAL,
	Goles_por_90                          DECIMAL,
	Asistencias_por_90                    DECIMAL,
	Goles_sin_penaltis_por_90             DECIMAL,
	Suplencias                            DECIMAL
);
CREATE TABLE partidos (
    match_id VARCHAR(50) PRIMARY KEY,
    Fecha DATE,
    Partido VARCHAR(100),
    Resultado VARCHAR(20),
    Local VARCHAR(50),
    Visitante VARCHAR(50),
    Competición VARCHAR(50),
    Duración INT,
    
    -- Campos equipo local
    Esquema_local VARCHAR(10),
    Goles_local INT,
    xG_local DECIMAL(5,2),
    Tiros_local INT,
    Tiros_a_porteria_local INT,
    porcentaje_Tiros_a_Porteria_local DECIMAL(5,2),
    Pases_local INT,
    Pases_completados_local INT,
    porcentaje_Pases_completados_local DECIMAL(5,2),
    Posesión_del_balón_porcentaje_local DECIMAL(5,2),
    Balones_perdidos_local INT,
    Balones_perdidos_Bajos_local INT,
    Balones_perdidos_Medios_local INT,
    Balones_perdidos_Altos_local INT,
    Balones_recuperados_local INT,
    Balones_recuperados_Bajos_local INT,
    Balones_recuperados_Medios_local INT,
    Balones_recuperados_Altos_local INT,
    Duelos_local INT,
    Duelos_Ganados_local INT,
    porcentaje_Duelos_Ganados_local DECIMAL(5,2),
    Ataques_posicionales_local INT,
    Ataques_posicionales_con_remate_local INT,
    porcentaje_Ataques_posicionales_con_remate_local DECIMAL(5,2),
    Contraataques_local INT,
    Contraataques_con_remate_local INT,
    porcentaje_Contraataques_con_remate_local DECIMAL(5,2),
    Córneres_local INT,
    Córneres_con_remate_local INT,
    porcentaje_Córneres_con_remate_local DECIMAL(5,2),
    Tiros_libres_con_remate_local INT,
    porcentaje_Tiros_libres_con_remate_local DECIMAL(5,2),
    Penaltis_local INT,
    Penaltis_marcados_local INT,
    porcentaje_Penaltis_marcados_local DECIMAL(5,2),
    Centros_local INT,
    Centros_precisos_local INT,
    porcentaje__Centros_precisos_local DECIMAL(5,2),
    Duelos_ofensivos_local INT,
    Duelos_ofensivos_ganados_local INT,
    porcentaje_Duelos_ofensivos_ganados_local DECIMAL(5,2),
    Fuera_de_juego_local INT,
    Goles_recibidos_local INT,
    Tiros_en_contra_local INT,
    Tiros_en_contra_a_la_portería_local INT,
    porcentaje_Tiros_en_contra_a_la_portería_local DECIMAL(5,2),
    Duelos_defensivos_local INT,
    Duelos_defensivos_ganados_local INT,
    porcentaje_Duelos_defensivos_ganados_local DECIMAL(5,2),
    Duelos_aéreos_local INT,
    Duelos_aéreos_ganados_local INT,
    porcentaje_Duelos_aéreos_ganados_local DECIMAL(5,2),
    Entradas_a_ras_de_suelo_local INT,
    Entradas_a_ras_de_suelo_logradas_local INT,
    porcentaje_Entradas_a_ras_de_suelo_logradas_local DECIMAL(5,2),
    Interceptaciones_local INT,
    Despejes_local INT,
    Faltas_local INT,
    Tarjetas_amarillas_local INT,
    Tarjetas_rojas_local INT,
    Pases_hacia_adelante_local INT,
    Pases_hacia_adelante_logrados_local INT,
    porcentaje_Pases_hacia_adelante_logrados_local DECIMAL(5,2),
    Pases_hacia_atrás_local INT,
    Pases_hacia_atrás_logrados_local INT,
    porcentaje_Pases_hacia_atrás_logrados_local DECIMAL(5,2),
    Pases_laterales_local INT,
    Pases_laterales_logrados_local INT,
    porcentaje_Pases_laterales_logrados_local DECIMAL(5,2),
    Pases_largos_local INT,
    Pases_largos_logrados_local INT,
    porcentaje_Pases_largos_logrados_local DECIMAL(5,2),
    Pases_en_el_último_tercio_local INT,
    Pases_en_el_último_tercio_logrados_local INT,
    porcentaje_Pases_en_el_último_tercio_logrados_local DECIMAL(5,2),
    Pases_progresivos_local INT,
    Pases_progresivos_precisos_local INT,
    porcentaje_Pases_progresivos_precisos_local DECIMAL(5,2),
    Desmarques_local INT,
    Desmarques_logrados_local INT,
    porcentaje_Desmarques_logrados_local DECIMAL(5,2),
    Saques_laterales_local INT,
    Saques_laterales_logrados_local INT,
    porcentaje_Saques_laterales_logrados_local DECIMAL(5,2),
    Saques_de_meta_local INT,
    Intensidad_de_paso_local DECIMAL(5,2),
    Promedio_pases_por_posesión_del_balón_local DECIMAL(5,2),
    Lanzamiento_largo_porcentaje_local DECIMAL(5,2),
    Distancia_media_de_tiro_local DECIMAL(5,2),
    Longitud_media_pases_local DECIMAL(5,2),
    PPDA_local DECIMAL(5,2),
    id_club_local VARCHAR(50),
    id_club_visitante VARCHAR(50),
    
    -- Campos equipo visitante
    Esquema_visitante VARCHAR(10),
    Goles_visitante INT,
    xG_visitante DECIMAL(5,2),
    Tiros_visitante INT,
    Tiros_a_porteria_visitante INT,
    porcentaje_Tiros_a_Porteria_visitante DECIMAL(5,2),
    Pases_visitante INT,
    Pases_completados_visitante INT,
    porcentaje_Pases_completados_visitante DECIMAL(5,2),
    Posesión_del_balón_porcentaje_visitante DECIMAL(5,2),
    Balones_perdidos_visitante INT,
    Balones_perdidos_Bajos_visitante INT,
    Balones_perdidos_Medios_visitante INT,
    Balones_perdidos_Altos_visitante INT,
    Balones_recuperados_visitante INT,
    Balones_recuperados_Bajos_visitante INT,
    Balones_recuperados_Medios_visitante INT,
    Balones_recuperados_Altos_visitante INT,
    Duelos_visitante INT,
    Duelos_Ganados_visitante INT,
    porcentaje_Duelos_Ganados_visitante DECIMAL(5,2),
    Ataques_posicionales_visitante INT,
    Ataques_posicionales_con_remate_visitante INT,
    porcentaje_Ataques_posicionales_con_remate_visitante DECIMAL(5,2),
    Contraataques_visitante INT,
    Contraataques_con_remate_visitante INT,
    porcentaje_Contraataques_con_remate_visitante DECIMAL(5,2),
    Córneres_visitante INT,
    Córneres_con_remate_visitante INT,
    porcentaje_Córneres_con_remate_visitante DECIMAL(5,2),
    Tiros_libres_con_remate_visitante INT,
    porcentaje_Tiros_libres_con_remate_visitante DECIMAL(5,2),
    Penaltis_visitante INT,
    Penaltis_marcados_visitante INT,
    porcentaje_Penaltis_marcados_visitante DECIMAL(5,2),
    Centros_visitante INT,
    Centros_precisos_visitante INT,
    porcentaje__Centros_precisos_visitante DECIMAL(5,2),
    Duelos_ofensivos_visitante INT,
    Duelos_ofensivos_ganados_visitante INT,
    porcentaje_Duelos_ofensivos_ganados_visitante DECIMAL(5,2),
    Fuera_de_juego_visitante INT,
    Goles_recibidos_visitante INT,
    Tiros_en_contra_visitante INT,
    Tiros_en_contra_a_la_portería_visitante INT,
    porcentaje_Tiros_en_contra_a_la_portería_visitante DECIMAL(5,2),
    Duelos_defensivos_visitante INT,
    Duelos_defensivos_ganados_visitante INT,
    porcentaje_Duelos_defensivos_ganados_visitante DECIMAL(5,2),
    Duelos_aéreos_visitante INT,
    Duelos_aéreos_ganados_visitante INT,
    porcentaje_Duelos_aéreos_ganados_visitante DECIMAL(5,2),
    Entradas_a_ras_de_suelo_visitante INT,
    Entradas_a_ras_de_suelo_logradas_visitante INT,
    porcentaje_Entradas_a_ras_de_suelo_logradas_visitante DECIMAL(5,2),
    Interceptaciones_visitante INT,
    Despejes_visitante INT,
    Faltas_visitante INT,
    Tarjetas_amarillas_visitante INT,
    Tarjetas_rojas_visitante INT,
    Pases_hacia_adelante_visitante INT,
    Pases_hacia_adelante_logrados_visitante INT,
    porcentaje_Pases_hacia_adelante_logrados_visitante DECIMAL(5,2),
    Pases_hacia_atrás_visitante INT,
    Pases_hacia_atrás_logrados_visitante INT,
    porcentaje_Pases_hacia_atrás_logrados_visitante DECIMAL(5,2),
    Pases_laterales_visitante INT,
    Pases_laterales_logrados_visitante INT,
    porcentaje_Pases_laterales_logrados_visitante DECIMAL(5,2),
    Pases_largos_visitante INT,
    Pases_largos_logrados_visitante INT,
    porcentaje_Pases_largos_logrados_visitante DECIMAL(5,2),
    Pases_en_el_último_tercio_visitante INT,
    Pases_en_el_último_tercio_logrados_visitante INT,
    porcentaje_Pases_en_el_último_tercio_logrados_visitante DECIMAL(5,2),
    Pases_progresivos_visitante INT,
    Pases_progresivos_precisos_visitante INT,
    porcentaje_Pases_progresivos_precisos_visitante DECIMAL(5,2),
    Desmarques_visitante INT,
    Desmarques_logrados_visitante INT,
    porcentaje_Desmarques_logrados_visitante DECIMAL(5,2),
    Saques_laterales_visitante INT,
    Saques_laterales_logrados_visitante INT,
    porcentaje_Saques_laterales_logrados_visitante DECIMAL(5,2),
    Saques_de_meta_visitante INT,
    Intensidad_de_paso_visitante DECIMAL(5,2),
    Promedio_pases_por_posesión_del_balón_visitante DECIMAL(5,2),
    Lanzamiento_largo_porcentaje_visitante DECIMAL(5,2),
    Distancia_media_de_tiro_visitante DECIMAL(5,2),
    Longitud_media_pases_visitante DECIMAL(5,2),
    PPDA_visitante DECIMAL(5,2),
    Jornada INT
);
CREATE TABLE Lesiones (
    Id_Lesion INTEGER,
	playerID INTEGER,                           -- Ejemplo: np.float64(6332.0) -> Se asume INTEGER
    Tipo_Lesion_ID INTEGER,                     -- Ejemplo: np.int64(2)
    Fecha_incio_lesion DATE,                    -- Ejemplo: '2016-06-27'
    Nombre_Jugador VARCHAR(255),                -- (Hereda tipo de Jugadores)
    Tipo_Lesion VARCHAR(255),                   -- Ejemplo: 'Suspension'
    Fecha_fin_lesion DATE,                      -- Ejemplo: '2016-07-04'
    Nombre_Completo_Jugador VARCHAR(255),       -- (Hereda tipo de Jugadores)
    Club VARCHAR(255),                          -- (Hereda tipo de Jugadores)
    clubID INTEGER                             -- (Hereda tipo de Clubes)
);

CREATE TABLE Lesiones_indice (
    Tipo_Lesion VARCHAR(255),                   -- Ejemplo: 'Suspension'
    Tipo_Lesion_ID INTEGER                     -- Ejemplo: np.int64(2)
);
create table clasficacion (
  Pos	INTEGER,
 Equipo VARCHAR (250),
 Puntos INTEGER,
 Partidos INTEGER,
 Victorias INTEGER,
 Empates INTEGER,
 Derrotas INTEGER,
 Goles_a_favor INTEGER,
 Goles_en_contra INTEGER,
 Diferencia_goles INTEGER,
 Jornada INTEGER,
 clubid INTEGER,
 index VARCHAR(250)
);
CREATE TABLE Clubes (
    clubID INTEGER PRIMARY KEY,  -- Ejemplo: np.float64(217.0) -> Se asume INTEGER para ID
    club VARCHAR(255)            -- Ejemplo: 'Barcelona'
);
