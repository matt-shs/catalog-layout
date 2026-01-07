USE Tardis;
--Sample Excel formula...
--="SELECT " & C2 & " AS [productorder], '" & SUBSTITUTE(TRIM(F2),"'","’") & "' AS [sku], '" & SUBSTITUTE(TRIM(G2),"'","’") & "' AS [producttitle], '" & SUBSTITUTE(TRIM(H2),"'","’") & "' AS [size], '" & SUBSTITUTE(TRIM(J2),"'","’") & "' AS [material], '" & SUBSTITUTE(TRIM(E2),"'","’") & "' AS [category] " & "UNION ALL "

--' with ’
--" with ”
WITH ProductData AS (
SELECT 1 AS [productorder], 'D-111031' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 2 AS [productorder], 'D-111033' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 3 AS [productorder], 'D-111431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 4 AS [productorder], 'D-111433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 5 AS [productorder], 'D-162531' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 6 AS [productorder], 'D-162533' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 7 AS [productorder], 'D-874231' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 8 AS [productorder], 'D-874233' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 9 AS [productorder], 'D-260231' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 10 AS [productorder], 'D-260233' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 11 AS [productorder], 'D-370831' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 12 AS [productorder], 'D-370833' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 13 AS [productorder], 'D-371131' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 14 AS [productorder], 'D-371133' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 15 AS [productorder], 'D-372631' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 16 AS [productorder], 'D-372633' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 17 AS [productorder], 'D-373931' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 18 AS [productorder], 'D-373933' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 19 AS [productorder], 'D-441731' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 20 AS [productorder], 'D-441733' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 21 AS [productorder], 'D-450131' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 22 AS [productorder], 'D-450133' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 23 AS [productorder], 'D-472331' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 24 AS [productorder], 'D-472333' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 25 AS [productorder], 'D-474231' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 26 AS [productorder], 'D-474233' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 27 AS [productorder], 'D-475631' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 28 AS [productorder], 'D-475633' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 29 AS [productorder], 'D-570131' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 30 AS [productorder], 'D-570133' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 31 AS [productorder], 'D-570331' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 32 AS [productorder], 'D-570333' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 33 AS [productorder], 'D-571231' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 34 AS [productorder], 'D-571233' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 35 AS [productorder], 'D-460731' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 36 AS [productorder], 'D-460733' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 37 AS [productorder], 'N-001331' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 38 AS [productorder], 'N-001333' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 39 AS [productorder], 'N-370331' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 40 AS [productorder], 'N-370333' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 41 AS [productorder], 'N-475131' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 42 AS [productorder], 'N-475133' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 43 AS [productorder], 'N-710531' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 44 AS [productorder], 'N-710533' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 45 AS [productorder], 'C-080631' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 46 AS [productorder], 'C-080633' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 47 AS [productorder], 'C-083031' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 48 AS [productorder], 'C-083033' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 49 AS [productorder], 'C-162731' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 50 AS [productorder], 'C-162733' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 51 AS [productorder], 'C-961731' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 52 AS [productorder], 'C-961733' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 53 AS [productorder], 'C-920631' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 54 AS [productorder], 'C-920633' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 55 AS [productorder], 'M-070231' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 56 AS [productorder], 'M-070233' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 57 AS [productorder], 'M-070431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 58 AS [productorder], 'M-070433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 59 AS [productorder], 'M-000531' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 60 AS [productorder], 'M-000533' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 61 AS [productorder], 'M-071331' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 62 AS [productorder], 'M-071333' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 63 AS [productorder], 'M-995731' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 64 AS [productorder], 'M-995733' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 65 AS [productorder], 'M-001431' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 66 AS [productorder], 'M-001433' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 67 AS [productorder], 'M-993731' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 68 AS [productorder], 'M-993733' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 69 AS [productorder], 'G-934531' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 70 AS [productorder], 'G-934533' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 71 AS [productorder], 'G-170831' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 72 AS [productorder], 'G-170833' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 73 AS [productorder], 'G-267131' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 74 AS [productorder], 'G-267133' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 75 AS [productorder], 'G-271031' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 76 AS [productorder], 'G-271033' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 77 AS [productorder], 'G-781431' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 78 AS [productorder], 'G-781433' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 79 AS [productorder], 'G-485631' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 80 AS [productorder], 'G-485633' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 81 AS [productorder], 'G-486031' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 82 AS [productorder], 'G-486033' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 83 AS [productorder], 'G-490831' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 84 AS [productorder], 'G-490833' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 85 AS [productorder], 'G-911131' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 86 AS [productorder], 'G-911133' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 87 AS [productorder], 'PWS-100' AS [sku], 'AED RED HEART WITH FLASH - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 88 AS [productorder], 'PWS-2' AS [sku], 'EYE WASH WITH FOUNTAIN PICTO - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 89 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 90 AS [productorder], 'PWS-5' AS [sku], 'FIRST AID WITH CROSS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 91 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 92 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 93 AS [productorder], 'PWS-70' AS [sku], 'SEVERE WEATHER SHELTER WITH TORNADO AND HOUSE SYMBOLS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 94 AS [productorder], 'FD-49' AS [sku], 'PEDESTRIAN AISLE PICTO FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 95 AS [productorder], 'FD-46' AS [sku], 'PPE REQUIRED BEYOND THIS POINT WITH THREE WORKER HEADS PICTOS FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 96 AS [productorder], 'FD-9901' AS [sku], 'STOP FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 97 AS [productorder], 'EM-017' AS [sku], 'MAP HOLDER' AS [producttitle], '12.5x18.5' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 98 AS [productorder], 'EM-085' AS [sku], 'MAP HOLDER' AS [producttitle], '10x12' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 99 AS [productorder], 'RT1-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 100 AS [productorder], 'RT2-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 101 AS [productorder], 'RT1-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 102 AS [productorder], 'RT2-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 103 AS [productorder], 'RT1-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 104 AS [productorder], 'RT2-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 105 AS [productorder], 'RT1-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 106 AS [productorder], 'RT2-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 107 AS [productorder], 'RT1-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 108 AS [productorder], 'RT2-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 109 AS [productorder], 'RT1-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 110 AS [productorder], 'RT2-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 111 AS [productorder], 'RT1-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 112 AS [productorder], 'RT2-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 113 AS [productorder], 'RT1-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 114 AS [productorder], 'RT2-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 115 AS [productorder], 'RT1-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 116 AS [productorder], 'RT2-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 117 AS [productorder], 'VT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 118 AS [productorder], 'TB-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 119 AS [productorder], 'LT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 120 AS [productorder], 'VT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 121 AS [productorder], 'TB-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 122 AS [productorder], 'LT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 123 AS [productorder], 'VT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 124 AS [productorder], 'TB-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 125 AS [productorder], 'LT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 126 AS [productorder], 'VT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 127 AS [productorder], 'TB-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 128 AS [productorder], 'LT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 129 AS [productorder], 'VT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 130 AS [productorder], 'TB-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 131 AS [productorder], 'LT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 132 AS [productorder], 'VT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 133 AS [productorder], 'TB-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 134 AS [productorder], 'LT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 135 AS [productorder], 'VT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 136 AS [productorder], 'TB-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 137 AS [productorder], 'LT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 138 AS [productorder], 'VT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 139 AS [productorder], 'TB-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 140 AS [productorder], 'LT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 141 AS [productorder], 'VT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 142 AS [productorder], 'TB-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 143 AS [productorder], 'LT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 144 AS [productorder], 'VT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 145 AS [productorder], 'TB-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 146 AS [productorder], 'LT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 147 AS [productorder], 'VT-992' AS [sku], 'DO NOT OPERATE TAG LOCK TO BE REMOVED BY PERSON TAG WITH PHOTO' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 148 AS [productorder], 'VT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 149 AS [productorder], 'TB-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 150 AS [productorder], 'LT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 151 AS [productorder], 'VT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 152 AS [productorder], 'TB-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 153 AS [productorder], 'LT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 154 AS [productorder], 'VT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 155 AS [productorder], 'TB-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 156 AS [productorder], 'LT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 157 AS [productorder], 'VT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 158 AS [productorder], 'TB-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 159 AS [productorder], 'LT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 160 AS [productorder], 'VT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 161 AS [productorder], 'TB-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 162 AS [productorder], 'LT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 163 AS [productorder], 'VT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 164 AS [productorder], 'TB-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 165 AS [productorder], 'LT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 166 AS [productorder], 'VT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 167 AS [productorder], 'TB-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 168 AS [productorder], 'LT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 169 AS [productorder], 'VT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 170 AS [productorder], 'TB-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 171 AS [productorder], 'LT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 172 AS [productorder], 'VT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 173 AS [productorder], 'TB-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 174 AS [productorder], 'LT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 175 AS [productorder], 'VT-179' AS [sku], 'BLANK WHITE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 176 AS [productorder], 'VT-180' AS [sku], 'BLANK RED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 177 AS [productorder], 'BT4058' AS [sku], 'BARRICADE TAPE - CAUTION' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 178 AS [productorder], 'BT4044' AS [sku], 'BARRICADE TAPE - CAUTION DO NOT ENTER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 179 AS [productorder], 'BT4057' AS [sku], 'BARRICADE TAPE - DANGER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 180 AS [productorder], 'BT4064' AS [sku], 'BARRICADE TAPE - DANGER HIGH VOLTAGE AREA' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 181 AS [productorder], 'WBC-03' AS [sku], 'CAUTION WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 182 AS [productorder], 'WBC-04' AS [sku], 'DANGER WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 183 AS [productorder], 'WBC-02RB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH RED' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 184 AS [productorder], 'WBC-02YB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH YELLOW' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 185 AS [productorder], 'V57203SR' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x30’' AS [size], 'RED|WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 186 AS [productorder], 'V5720WH' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x150’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 187 AS [productorder], 'RST111' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH WHITE' AS [producttitle], '1”x30’' AS [size], 'REF WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 188 AS [productorder], 'RST112' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH RED' AS [producttitle], '1”x30’' AS [size], 'REF RED' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 189 AS [productorder], 'RST106' AS [sku], 'STRIPED REFLECTIVE SAFETY TAPE - 2 INCH' AS [producttitle], '2”x30’' AS [size], 'REF BLK|YLW' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 190 AS [productorder], 'SG3104B' AS [sku], 'SAFE STEP ANTI-SKID TAPE' AS [producttitle], '4”x60’' AS [size], '' AS [material], 'Anti-Skid Tape' AS [category] UNION ALL 
SELECT 191 AS [productorder], 'MF-02WH' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'WHITE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 192 AS [productorder], 'MF-02RD' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'RED' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 193 AS [productorder], 'MF-02YL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'YELLOW' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 194 AS [productorder], 'MF-02OR' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'ORANGE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 195 AS [productorder], 'MF-02BL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'BLUE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 196 AS [productorder], 'MF-02GN' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'GREEN' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 197 AS [productorder], 'PBC-02' AS [sku], 'PENNANT FLAGS' AS [producttitle], '60’' AS [size], 'RED' AS [material], 'Pennant Flags' AS [category] UNION ALL 
SELECT 198 AS [productorder], 'PBC-04' AS [sku], 'PENNANT FLAGS' AS [producttitle], '100’' AS [size], 'MULTI' AS [material], 'Pennant Flags' AS [category] UNION ALL 
SELECT 199 AS [productorder], 'AF-01' AS [sku], 'HEAVY DUTY NYLON' AS [producttitle], '36x36' AS [size], 'NYLON' AS [material], 'Airport Flag' AS [category] UNION ALL 
SELECT 200 AS [productorder], '1457VE410KA' AS [sku], 'MASTER LOCK PORTABLE VALVE AND ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 201 AS [productorder], 'S1010E410KA' AS [sku], 'MASTER LOCK PORTABLE ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 202 AS [productorder], '410RED' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 203 AS [productorder], '410YLW' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 204 AS [productorder], '410ORG' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'ORANGE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 205 AS [productorder], '410BLU' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 206 AS [productorder], '410TEAL' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'TEAL' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 207 AS [productorder], '410PRP' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'PURPLE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 208 AS [productorder], '410GRN' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 209 AS [productorder], '410BLK' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 210 AS [productorder], '3RED' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 211 AS [productorder], '3BLU' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 212 AS [productorder], '3GRN' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 213 AS [productorder], '3WHT' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'WHITE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 214 AS [productorder], '3YLW' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 215 AS [productorder], '3BLK' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 216 AS [productorder], 'S806' AS [sku], 'MASTER LOCK VALVE LOCKOUT ADJUSTABLE CABLE' AS [producttitle], '6’' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 217 AS [productorder], '493B' AS [sku], 'MASTER LOCK GRIP TIGHT ELECTRICAL LOCKOUT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 218 AS [productorder], 'S3821' AS [sku], 'MASTER LOCK LOCKOUT DEVICE MINIATURE CIRCUIT BREAKER 120/240V' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 219 AS [productorder], 'HM-125' AS [sku], '10 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 220 AS [productorder], 'HM-126' AS [sku], '30 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 221 AS [productorder], 'HM-96' AS [sku], 'CERTIFIED FORKLIFT DRIVER WITH FORKLIFT PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 222 AS [productorder], 'HM-97' AS [sku], 'FALL PROTECTION TRAINED PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 223 AS [productorder], 'HM-113' AS [sku], 'LOCKOUT TAG-OUT TRAINED WITH PICTO OF HASP TAG & LOCK - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 224 AS [productorder], 'HMRS-522' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 225 AS [productorder], 'HMRS-523' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE YELLOW' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 226 AS [productorder], 'HMRS-524' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 227 AS [productorder], 'HMRS-525' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE BLUE' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 228 AS [productorder], 'G4-26314' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 229 AS [productorder], 'G4-26313' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'PLASTIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 230 AS [productorder], 'G4-26311' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ALUMINUM' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 231 AS [productorder], 'FWS-F2' AS [sku], 'FIRE WALL RATED FOR 2 HOURS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 232 AS [productorder], 'FWS-FS' AS [sku], 'FIRE AND SMOKE BARRIER PROTECT ALL OPENINGS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 233 AS [productorder], 'FWS-F6' AS [sku], 'SMOKE WALL PROTECT ALL PENETRATIONS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 234 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 235 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 236 AS [productorder], 'P-0488' AS [sku], 'CAUTION WET FLOOR - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 237 AS [productorder], 'P-0489' AS [sku], 'CAUTION WET FLOOR CUIDADA PISO MOJADO - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 238 AS [productorder], 'R1-1RA16' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 239 AS [productorder], 'R1-1RA22' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 240 AS [productorder], 'R1-2RA22' AS [sku], 'YIELD - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 241 AS [productorder], 'R5-1RA16' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 242 AS [productorder], 'R5-1HIA22' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 243 AS [productorder], 'R2-1HIA9' AS [sku], 'SPEED LIMIT SIGN' AS [producttitle], '24x18' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 244 AS [productorder], 'W11-2ADG16' AS [sku], 'PEDESTRIAN CROSSING SYMBOL - WARNING TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 245 AS [productorder], 'R-70AL5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 246 AS [productorder], 'R-70RA5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 247 AS [productorder], 'R7-8NRA5' AS [sku], 'RESERVED PARKING PICTO - HANDICAPPED PARKING SIGN' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 248 AS [productorder], 'W-65HIA32' AS [sku], 'ROAD WORK AHEAD - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '48x48' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 249 AS [productorder], 'W3-4HIA27' AS [sku], 'BE PREPARED TO STOP - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '36x36' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 250 AS [productorder], 'SMV-1' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 251 AS [productorder], 'SMV-2' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'REFLECTIVE ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 252 AS [productorder], 'PL-17R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 10" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 253 AS [productorder], 'PL-18R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 72" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 254 AS [productorder], 'PL-25R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM 81" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 255 AS [productorder], 'DL-1000W' AS [sku], 'TRAFFIC SIGN STAND - ROLL UP' AS [producttitle], '36x36' AS [size], 'ALUMINUM | STEEL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 256 AS [productorder], 'MSR-1' AS [sku], 'BE PREPARED TO STOP ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 257 AS [productorder], 'MSR-10' AS [sku], 'ROAD WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 258 AS [productorder], 'MSR-24' AS [sku], 'UTILITY WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 259 AS [productorder], 'P-8' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 260 AS [productorder], 'P-10' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 261 AS [productorder], 'P-12' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 262 AS [productorder], 'GP-8' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 263 AS [productorder], 'GP-10' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 264 AS [productorder], 'GP-12' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 265 AS [productorder], 'ST-5' AS [sku], 'PORTABLE SIGN BASE AND POST' AS [producttitle], '48x18' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 266 AS [productorder], 'REFCONE-18' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '18”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 267 AS [productorder], 'REFCONE-28' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '28”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 268 AS [productorder], 'PLT-03' AS [sku], 'PLACARD HOLDER WITH 5 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 269 AS [productorder], 'PLT-04' AS [sku], 'PLACARD HOLDER WITH 8 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 270 AS [productorder], 'DOT-26804' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 271 AS [productorder], 'DOT-26801' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 272 AS [productorder], 'DOT-08374' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 273 AS [productorder], 'DOT-08379' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 274 AS [productorder], 'DOT-96754' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 275 AS [productorder], 'DOT-96759' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category]


/*
--20260107.2
SELECT 1 AS [productorder], 'D-111031' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 2 AS [productorder], 'D-111033' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 3 AS [productorder], 'D-111431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 4 AS [productorder], 'D-111433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 5 AS [productorder], 'D-162531' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 6 AS [productorder], 'D-162533' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 7 AS [productorder], 'D-874231' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 8 AS [productorder], 'D-874233' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 9 AS [productorder], 'D-260231' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 10 AS [productorder], 'D-260233' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 11 AS [productorder], 'D-370831' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 12 AS [productorder], 'D-370833' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 13 AS [productorder], 'D-371131' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 14 AS [productorder], 'D-371133' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 15 AS [productorder], 'D-372631' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 16 AS [productorder], 'D-372633' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 17 AS [productorder], 'D-373931' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 18 AS [productorder], 'D-373933' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 19 AS [productorder], 'D-441731' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 20 AS [productorder], 'D-441733' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 21 AS [productorder], 'D-450131' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 22 AS [productorder], 'D-450133' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 23 AS [productorder], 'D-472331' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 24 AS [productorder], 'D-472333' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 25 AS [productorder], 'D-474231' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 26 AS [productorder], 'D-474233' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 27 AS [productorder], 'D-475631' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 28 AS [productorder], 'D-475633' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 29 AS [productorder], 'D-570131' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 30 AS [productorder], 'D-570133' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 31 AS [productorder], 'D-570331' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 32 AS [productorder], 'D-570333' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 33 AS [productorder], 'D-571231' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 34 AS [productorder], 'D-571233' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 35 AS [productorder], 'D-460731' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 36 AS [productorder], 'D-460733' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 37 AS [productorder], 'N-001331' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 38 AS [productorder], 'N-001333' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 39 AS [productorder], 'N-370331' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 40 AS [productorder], 'N-370333' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 41 AS [productorder], 'N-475131' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 42 AS [productorder], 'N-475133' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 43 AS [productorder], 'N-710531' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 44 AS [productorder], 'N-710533' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 45 AS [productorder], 'C-080631' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 46 AS [productorder], 'C-080633' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 47 AS [productorder], 'C-083031' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 48 AS [productorder], 'C-083033' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 49 AS [productorder], 'C-162731' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 50 AS [productorder], 'C-162733' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 51 AS [productorder], 'C-961731' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 52 AS [productorder], 'C-961733' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 53 AS [productorder], 'C-920631' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 54 AS [productorder], 'C-920633' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 55 AS [productorder], 'M-070231' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 56 AS [productorder], 'M-070233' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 57 AS [productorder], 'M-070431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 58 AS [productorder], 'M-070433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 59 AS [productorder], 'M-000531' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 60 AS [productorder], 'M-000533' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 61 AS [productorder], 'M-071331' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 62 AS [productorder], 'M-071333' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 63 AS [productorder], 'M-995731' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 64 AS [productorder], 'M-995733' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 65 AS [productorder], 'M-001431' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 66 AS [productorder], 'M-001433' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 67 AS [productorder], 'M-993731' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 68 AS [productorder], 'M-993733' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 69 AS [productorder], 'G-934531' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 70 AS [productorder], 'G-934533' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 71 AS [productorder], 'G-170831' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 72 AS [productorder], 'G-170833' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 73 AS [productorder], 'G-267131' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 74 AS [productorder], 'G-267133' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 75 AS [productorder], 'G-271031' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 76 AS [productorder], 'G-271033' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 77 AS [productorder], 'G-781431' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 78 AS [productorder], 'G-781433' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 79 AS [productorder], 'G-485631' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 80 AS [productorder], 'G-485633' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 81 AS [productorder], 'G-486031' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 82 AS [productorder], 'G-486033' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 83 AS [productorder], 'G-490831' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 84 AS [productorder], 'G-490833' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 85 AS [productorder], 'G-911131' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 86 AS [productorder], 'G-911133' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 87 AS [productorder], 'PWS-100' AS [sku], 'AED RED HEART WITH FLASH - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 88 AS [productorder], 'PWS-2' AS [sku], 'EYE WASH WITH FOUNTAIN PICTO - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 89 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 90 AS [productorder], 'PWS-5' AS [sku], 'FIRST AID WITH CROSS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 91 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 92 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 93 AS [productorder], 'PWS-70' AS [sku], 'SEVERE WEATHER SHELTER WITH TORNADO AND HOUSE SYMBOLS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 94 AS [productorder], 'FD-49' AS [sku], 'PEDESTRIAN AISLE PICTO FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 95 AS [productorder], 'FD-46' AS [sku], 'PPE REQUIRED BEYOND THIS POINT WITH THREE WORKER HEADS PICTOS FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 96 AS [productorder], 'FD-9901' AS [sku], 'STOP FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 97 AS [productorder], 'EM-017' AS [sku], 'MAP HOLDER' AS [producttitle], '12.5x18.5' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 98 AS [productorder], 'EM-085' AS [sku], 'MAP HOLDER' AS [producttitle], '10x12' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 99 AS [productorder], 'RT1-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 100 AS [productorder], 'RT2-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 101 AS [productorder], 'RT1-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 102 AS [productorder], 'RT2-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 103 AS [productorder], 'RT1-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 104 AS [productorder], 'RT2-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 105 AS [productorder], 'RT1-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 106 AS [productorder], 'RT2-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 107 AS [productorder], 'RT1-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 108 AS [productorder], 'RT2-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 109 AS [productorder], 'RT1-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 110 AS [productorder], 'RT2-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 111 AS [productorder], 'RT1-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 112 AS [productorder], 'RT2-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 113 AS [productorder], 'RT1-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 114 AS [productorder], 'RT2-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 115 AS [productorder], 'RT1-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 116 AS [productorder], 'RT2-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 117 AS [productorder], 'VT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 118 AS [productorder], 'TB-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 119 AS [productorder], 'LT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 120 AS [productorder], 'VT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 121 AS [productorder], 'TB-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 122 AS [productorder], 'LT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 123 AS [productorder], 'VT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 124 AS [productorder], 'TB-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 125 AS [productorder], 'LT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 126 AS [productorder], 'VT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 127 AS [productorder], 'TB-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 128 AS [productorder], 'LT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 129 AS [productorder], 'VT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 130 AS [productorder], 'TB-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 131 AS [productorder], 'LT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 132 AS [productorder], 'VT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 133 AS [productorder], 'TB-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 134 AS [productorder], 'LT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 135 AS [productorder], 'VT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 136 AS [productorder], 'TB-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 137 AS [productorder], 'LT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 138 AS [productorder], 'VT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 139 AS [productorder], 'TB-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 140 AS [productorder], 'LT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 141 AS [productorder], 'VT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 142 AS [productorder], 'TB-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 143 AS [productorder], 'LT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 144 AS [productorder], 'VT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 145 AS [productorder], 'TB-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 146 AS [productorder], 'LT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 147 AS [productorder], 'VT-992' AS [sku], 'DO NOT OPERATE TAG LOCK TO BE REMOVED BY PERSON TAG WITH PHOTO' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 148 AS [productorder], 'VT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 149 AS [productorder], 'TB-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 150 AS [productorder], 'LT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 151 AS [productorder], 'VT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 152 AS [productorder], 'TB-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 153 AS [productorder], 'LT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 154 AS [productorder], 'VT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 155 AS [productorder], 'TB-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 156 AS [productorder], 'LT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 157 AS [productorder], 'VT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 158 AS [productorder], 'TB-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 159 AS [productorder], 'LT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 160 AS [productorder], 'VT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 161 AS [productorder], 'TB-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 162 AS [productorder], 'LT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 163 AS [productorder], 'VT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 164 AS [productorder], 'TB-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 165 AS [productorder], 'LT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 166 AS [productorder], 'VT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 167 AS [productorder], 'TB-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 168 AS [productorder], 'LT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 169 AS [productorder], 'VT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 170 AS [productorder], 'TB-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 171 AS [productorder], 'LT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 172 AS [productorder], 'VT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 173 AS [productorder], 'TB-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 174 AS [productorder], 'LT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 175 AS [productorder], 'VT-179' AS [sku], 'BLANK WHITE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 176 AS [productorder], 'VT-180' AS [sku], 'BLANK RED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 177 AS [productorder], 'BT4058' AS [sku], 'BARRICADE TAPE - CAUTION' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 178 AS [productorder], 'BT4044' AS [sku], 'BARRICADE TAPE - CAUTION DO NOT ENTER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 179 AS [productorder], 'BT4057' AS [sku], 'BARRICADE TAPE - DANGER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 180 AS [productorder], 'BT4064' AS [sku], 'BARRICADE TAPE - DANGER HIGH VOLTAGE AREA' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 181 AS [productorder], 'WBC-03' AS [sku], 'CAUTION WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 182 AS [productorder], 'WBC-04' AS [sku], 'DANGER WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 183 AS [productorder], 'WBC-02RB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH RED' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 184 AS [productorder], 'WBC-02YB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH YELLOW' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 185 AS [productorder], 'V57203SR' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x30’' AS [size], 'RED|WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 186 AS [productorder], 'V5720WH' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x150’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 187 AS [productorder], 'RST111' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH WHITE' AS [producttitle], '1”x30’' AS [size], 'REF WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 188 AS [productorder], 'RST112' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH RED' AS [producttitle], '1”x30’' AS [size], 'REF RED' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 189 AS [productorder], 'RST106' AS [sku], 'STRIPED REFLECTIVE SAFETY TAPE - 2 INCH' AS [producttitle], '2”x30’' AS [size], 'REF BLK|YLW' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 190 AS [productorder], 'SG3104B' AS [sku], 'SAFE STEP ANTI-SKID TAPE' AS [producttitle], '4”x60’' AS [size], '' AS [material], 'Anti-Skid Tape' AS [category] UNION ALL 
SELECT 191 AS [productorder], 'MF-02WH' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'WHITE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 192 AS [productorder], 'MF-02RD' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'RED' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 193 AS [productorder], 'MF-02YL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'YELLOW' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 194 AS [productorder], 'MF-02OR' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'ORANGE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 195 AS [productorder], 'MF-02BL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'BLUE' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 196 AS [productorder], 'MF-02GN' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'GREEN' AS [material], 'Marking Flags' AS [category] UNION ALL 
SELECT 197 AS [productorder], 'PBC-02' AS [sku], 'PENNANT FLAGS' AS [producttitle], '60’' AS [size], 'RED' AS [material], 'Pennant Flags' AS [category] UNION ALL 
SELECT 198 AS [productorder], 'PBC-04' AS [sku], 'PENNANT FLAGS' AS [producttitle], '100’' AS [size], 'MULTI' AS [material], 'Pennant Flags' AS [category] UNION ALL 
SELECT 199 AS [productorder], 'AF-01' AS [sku], 'HEAVY DUTY NYLON' AS [producttitle], '36x36' AS [size], 'NYLON' AS [material], 'Airport Flag' AS [category] UNION ALL 
SELECT 200 AS [productorder], '1457VE410KA' AS [sku], 'MASTER LOCK PORTABLE VALVE AND ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 201 AS [productorder], 'S1010E410KA' AS [sku], 'MASTER LOCK PORTABLE ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 202 AS [productorder], '410RED' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 203 AS [productorder], '410YLW' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 204 AS [productorder], '410ORG' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'ORANGE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 205 AS [productorder], '410BLU' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 206 AS [productorder], '410TEAL' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'TEAL' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 207 AS [productorder], '410PRP' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'PURPLE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 208 AS [productorder], '410GRN' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 209 AS [productorder], '410BLK' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 210 AS [productorder], '3RED' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 211 AS [productorder], '3BLU' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 212 AS [productorder], '3GRN' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 213 AS [productorder], '3WHT' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'WHITE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 214 AS [productorder], '3YLW' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 215 AS [productorder], '3BLK' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 216 AS [productorder], 'S806' AS [sku], 'MASTER LOCK VALVE LOCKOUT ADJUSTABLE CABLE' AS [producttitle], '6’' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 217 AS [productorder], '493B' AS [sku], 'MASTER LOCK GRIP TIGHT ELECTRICAL LOCKOUT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 218 AS [productorder], 'S3821' AS [sku], 'MASTER LOCK LOCKOUT DEVICE MINIATURE CIRCUIT BREAKER 120/240V' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 219 AS [productorder], 'HM-125' AS [sku], '10 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 220 AS [productorder], 'HM-126' AS [sku], '30 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 221 AS [productorder], 'HM-96' AS [sku], 'CERTIFIED FORKLIFT DRIVER WITH FORKLIFT PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 222 AS [productorder], 'HM-97' AS [sku], 'FALL PROTECTION TRAINED PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 223 AS [productorder], 'HM-113' AS [sku], 'LOCKOUT TAG-OUT TRAINED WITH PICTO OF HASP TAG & LOCK - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 224 AS [productorder], 'HMRS-522' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 225 AS [productorder], 'HMRS-523' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE YELLOW' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 226 AS [productorder], 'HMRS-524' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 227 AS [productorder], 'HMRS-525' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE BLUE' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 228 AS [productorder], 'G4-26314' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 229 AS [productorder], 'G4-26313' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'PLASTIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 230 AS [productorder], 'G4-26311' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ALUMINUM' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 231 AS [productorder], 'FWS-F2' AS [sku], 'FIRE WALL RATED FOR 2 HOURS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 232 AS [productorder], 'FWS-FS' AS [sku], 'FIRE AND SMOKE BARRIER PROTECT ALL OPENINGS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 233 AS [productorder], 'FWS-F6' AS [sku], 'SMOKE WALL PROTECT ALL PENETRATIONS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 234 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 235 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 236 AS [productorder], 'P-0488' AS [sku], 'CAUTION WET FLOOR - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 237 AS [productorder], 'P-0489' AS [sku], 'CAUTION WET FLOOR CUIDADA PISO MOJADO - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 238 AS [productorder], 'R1-1RA16' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 239 AS [productorder], 'R1-1RA22' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 240 AS [productorder], 'R1-2RA22' AS [sku], 'YIELD - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 241 AS [productorder], 'R5-1RA16' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 242 AS [productorder], 'R5-1HIA22' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 243 AS [productorder], 'R2-1HIA9' AS [sku], 'SPEED LIMIT SIGN' AS [producttitle], '24x18' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 244 AS [productorder], 'W11-2ADG16' AS [sku], 'PEDESTRIAN CROSSING SYMBOL - WARNING TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 245 AS [productorder], 'R-70AL5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 246 AS [productorder], 'R-70RA5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 247 AS [productorder], 'R7-8NRA5' AS [sku], 'RESERVED PARKING PICTO - HANDICAPPED PARKING SIGN' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 248 AS [productorder], 'W-65HIA32' AS [sku], 'ROAD WORK AHEAD - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '48x48' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 249 AS [productorder], 'W3-4HIA27' AS [sku], 'BE PREPARED TO STOP - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '36x36' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 250 AS [productorder], 'SMV-1' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 251 AS [productorder], 'SMV-2' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'REFLECTIVE ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 252 AS [productorder], 'PL-17R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 10" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 253 AS [productorder], 'PL-18R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 72" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 254 AS [productorder], 'PL-25R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM 81" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 255 AS [productorder], 'DL-1000W' AS [sku], 'TRAFFIC SIGN STAND - ROLL UP' AS [producttitle], '36x36' AS [size], 'ALUMINUM | STEEL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 256 AS [productorder], 'MSR-1' AS [sku], 'BE PREPARED TO STOP ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 257 AS [productorder], 'MSR-10' AS [sku], 'ROAD WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 258 AS [productorder], 'MSR-24' AS [sku], 'UTILITY WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 259 AS [productorder], 'P-8' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 260 AS [productorder], 'P-10' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 261 AS [productorder], 'P-12' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 262 AS [productorder], 'GP-8' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 263 AS [productorder], 'GP-10' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 264 AS [productorder], 'GP-12' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 265 AS [productorder], 'ST-5' AS [sku], 'PORTABLE SIGN BASE AND POST' AS [producttitle], '48x18' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 266 AS [productorder], 'REFCONE-18' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '18”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 267 AS [productorder], 'REFCONE-28' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '28”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 268 AS [productorder], 'PLT-03' AS [sku], 'PLACARD HOLDER WITH 5 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 269 AS [productorder], 'PLT-04' AS [sku], 'PLACARD HOLDER WITH 8 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 270 AS [productorder], 'DOT-26804' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 271 AS [productorder], 'DOT-26801' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 272 AS [productorder], 'DOT-08374' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 273 AS [productorder], 'DOT-08379' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 274 AS [productorder], 'DOT-96754' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 275 AS [productorder], 'DOT-96759' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category]


--20260107.1
SELECT 1 AS [productorder], 'D-111031' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 2 AS [productorder], 'D-111033' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 3 AS [productorder], 'D-111431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 4 AS [productorder], 'D-111433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 5 AS [productorder], 'D-162531' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 6 AS [productorder], 'D-162533' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 7 AS [productorder], 'D-874231' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 8 AS [productorder], 'D-874233' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 9 AS [productorder], 'D-260231' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 10 AS [productorder], 'D-260233' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 11 AS [productorder], 'D-370831' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 12 AS [productorder], 'D-370833' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 13 AS [productorder], 'D-371131' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 14 AS [productorder], 'D-371133' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 15 AS [productorder], 'D-372631' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 16 AS [productorder], 'D-372633' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 17 AS [productorder], 'D-373931' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 18 AS [productorder], 'D-373933' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 19 AS [productorder], 'D-441731' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 20 AS [productorder], 'D-441733' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 21 AS [productorder], 'D-450131' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 22 AS [productorder], 'D-450133' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 23 AS [productorder], 'D-472331' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 24 AS [productorder], 'D-472333' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 25 AS [productorder], 'D-474231' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 26 AS [productorder], 'D-474233' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 27 AS [productorder], 'D-475631' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 28 AS [productorder], 'D-475633' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 29 AS [productorder], 'D-570131' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 30 AS [productorder], 'D-570133' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 31 AS [productorder], 'D-570331' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 32 AS [productorder], 'D-570333' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 33 AS [productorder], 'D-571231' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 34 AS [productorder], 'D-571233' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 35 AS [productorder], 'D-460731' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 36 AS [productorder], 'D-460733' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 37 AS [productorder], 'N-001331' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 38 AS [productorder], 'N-001333' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 39 AS [productorder], 'N-370331' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 40 AS [productorder], 'N-370333' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 41 AS [productorder], 'N-475131' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 42 AS [productorder], 'N-475133' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 43 AS [productorder], 'N-710531' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 44 AS [productorder], 'N-710533' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 45 AS [productorder], 'C-080631' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 46 AS [productorder], 'C-080633' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 47 AS [productorder], 'C-083031' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 48 AS [productorder], 'C-083033' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 49 AS [productorder], 'C-162731' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 50 AS [productorder], 'C-162733' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 51 AS [productorder], 'C-961731' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 52 AS [productorder], 'C-961733' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 53 AS [productorder], 'C-920631' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 54 AS [productorder], 'C-920633' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 55 AS [productorder], 'M-070231' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 56 AS [productorder], 'M-070233' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 57 AS [productorder], 'M-070431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 58 AS [productorder], 'M-070433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 59 AS [productorder], 'M-000531' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 60 AS [productorder], 'M-000533' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 61 AS [productorder], 'M-071331' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 62 AS [productorder], 'M-071333' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 63 AS [productorder], 'M-995731' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 64 AS [productorder], 'M-995733' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 65 AS [productorder], 'M-001431' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 66 AS [productorder], 'M-001433' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 67 AS [productorder], 'M-993731' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 68 AS [productorder], 'M-993733' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 69 AS [productorder], 'G-934531' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 70 AS [productorder], 'G-934533' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 71 AS [productorder], 'G-170831' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 72 AS [productorder], 'G-170833' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 73 AS [productorder], 'G-267131' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 74 AS [productorder], 'G-267133' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 75 AS [productorder], 'G-271031' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 76 AS [productorder], 'G-271033' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 77 AS [productorder], 'G-781431' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 78 AS [productorder], 'G-781433' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 79 AS [productorder], 'G-485631' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 80 AS [productorder], 'G-485633' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 81 AS [productorder], 'G-486031' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 82 AS [productorder], 'G-486033' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 83 AS [productorder], 'G-490831' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 84 AS [productorder], 'G-490833' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 85 AS [productorder], 'G-911131' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 86 AS [productorder], 'G-911133' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 87 AS [productorder], 'PWS-100' AS [sku], 'AED RED HEART WITH FLASH - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 88 AS [productorder], 'PWS-2' AS [sku], 'EYE WASH WITH FOUNTAIN PICTO - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 89 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 90 AS [productorder], 'PWS-5' AS [sku], 'FIRST AID WITH CROSS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 91 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 92 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 93 AS [productorder], 'PWS-70' AS [sku], 'SEVERE WEATHER SHELTER WITH TORNADO AND HOUSE SYMBOLS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 94 AS [productorder], 'FD-49' AS [sku], 'PEDESTRIAN AISLE PICTO FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 95 AS [productorder], 'FD-46' AS [sku], 'PPE REQUIRED BEYOND THIS POINT WITH THREE WORKER HEADS PICTOS FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 96 AS [productorder], 'FD-9901' AS [sku], 'STOP FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 97 AS [productorder], 'EM-017' AS [sku], 'MAP HOLDER' AS [producttitle], '12.5x18.5' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 98 AS [productorder], 'EM-085' AS [sku], 'MAP HOLDER' AS [producttitle], '10x12' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 99 AS [productorder], 'RT1-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 100 AS [productorder], 'RT2-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD SOAR TAG' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 101 AS [productorder], 'RT1-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 102 AS [productorder], 'RT2-713' AS [sku], 'CAUTION SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 103 AS [productorder], 'RT1-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 104 AS [productorder], 'RT2-182' AS [sku], 'DANGER BARRICADE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 105 AS [productorder], 'RT1-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 106 AS [productorder], 'RT2-176' AS [sku], 'DANGER DO NOT OPERATE DATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 107 AS [productorder], 'RT1-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 108 AS [productorder], 'RT2-149' AS [sku], 'DANGER DO NOT OPERATE SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 109 AS [productorder], 'RT1-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 110 AS [productorder], 'RT2-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 111 AS [productorder], 'RT1-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 112 AS [productorder], 'RT2-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 113 AS [productorder], 'RT1-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 114 AS [productorder], 'RT2-714' AS [sku], 'DANGER SCAFFOLD SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 115 AS [productorder], 'RT1-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 116 AS [productorder], 'RT2-712' AS [sku], 'SCAFFOLD OK SOAR TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Synthetic Tags' AS [category] UNION ALL 
SELECT 117 AS [productorder], 'VT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 118 AS [productorder], 'TB-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 119 AS [productorder], 'LT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 120 AS [productorder], 'VT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 121 AS [productorder], 'TB-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 122 AS [productorder], 'LT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 123 AS [productorder], 'VT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 124 AS [productorder], 'TB-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 125 AS [productorder], 'LT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 126 AS [productorder], 'VT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 127 AS [productorder], 'TB-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 128 AS [productorder], 'LT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 129 AS [productorder], 'VT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 130 AS [productorder], 'TB-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 131 AS [productorder], 'LT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 132 AS [productorder], 'VT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 133 AS [productorder], 'TB-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 134 AS [productorder], 'LT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 135 AS [productorder], 'VT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 136 AS [productorder], 'TB-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 137 AS [productorder], 'LT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 138 AS [productorder], 'VT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 139 AS [productorder], 'TB-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 140 AS [productorder], 'LT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 141 AS [productorder], 'VT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 142 AS [productorder], 'TB-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 143 AS [productorder], 'LT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 144 AS [productorder], 'VT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 145 AS [productorder], 'TB-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 146 AS [productorder], 'LT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 147 AS [productorder], 'VT-992' AS [sku], 'DO NOT OPERATE TAG LOCK TO BE REMOVED BY PERSON TAG WITH PHOTO' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 148 AS [productorder], 'VT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 149 AS [productorder], 'TB-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 150 AS [productorder], 'LT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 151 AS [productorder], 'VT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 152 AS [productorder], 'TB-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 153 AS [productorder], 'LT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 154 AS [productorder], 'VT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 155 AS [productorder], 'TB-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 156 AS [productorder], 'LT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 157 AS [productorder], 'VT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 158 AS [productorder], 'TB-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 159 AS [productorder], 'LT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 160 AS [productorder], 'VT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 161 AS [productorder], 'TB-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 162 AS [productorder], 'LT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 163 AS [productorder], 'VT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 164 AS [productorder], 'TB-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 165 AS [productorder], 'LT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 166 AS [productorder], 'VT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 167 AS [productorder], 'TB-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 168 AS [productorder], 'LT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 169 AS [productorder], 'VT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 170 AS [productorder], 'TB-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 171 AS [productorder], 'LT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 172 AS [productorder], 'VT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 173 AS [productorder], 'TB-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 174 AS [productorder], 'LT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 175 AS [productorder], 'VT-179' AS [sku], 'BLANK WHITE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 176 AS [productorder], 'VT-180' AS [sku], 'BLANK RED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 177 AS [productorder], 'BT4058' AS [sku], 'BARRICADE TAPE - CAUTION' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 178 AS [productorder], 'BT4044' AS [sku], 'BARRICADE TAPE - CAUTION DO NOT ENTER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 179 AS [productorder], 'BT4057' AS [sku], 'BARRICADE TAPE - DANGER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 180 AS [productorder], 'BT4064' AS [sku], 'BARRICADE TAPE - DANGER HIGH VOLTAGE AREA' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 181 AS [productorder], 'WBC-03' AS [sku], 'CAUTION WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 182 AS [productorder], 'WBC-04' AS [sku], 'DANGER WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 183 AS [productorder], 'WBC-02RB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH RED' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 184 AS [productorder], 'WBC-02YB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH YELLOW' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 185 AS [productorder], 'V57203SR' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x30’' AS [size], 'RED|WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 186 AS [productorder], 'V5720WH' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x150’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 187 AS [productorder], 'RST111' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH WHITE' AS [producttitle], '1”x30’' AS [size], 'REF WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 188 AS [productorder], 'RST112' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH RED' AS [producttitle], '1”x30’' AS [size], 'REF RED' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 189 AS [productorder], 'RST106' AS [sku], 'STRIPED REFLECTIVE SAFETY TAPE - 2 INCH' AS [producttitle], '2”x30’' AS [size], 'REF BLK|YLW' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 190 AS [productorder], 'SG3104B' AS [sku], 'SAFE STEP ANTI-SKID TAPE' AS [producttitle], '4”x60’' AS [size], '' AS [material], 'Anti-Skid Tape' AS [category] UNION ALL 
SELECT 191 AS [productorder], 'MF-02WH' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'WHITE' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 192 AS [productorder], 'MF-02RD' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'RED' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 193 AS [productorder], 'MF-02YL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'YELLOW' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 194 AS [productorder], 'MF-02OR' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'ORANGE' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 195 AS [productorder], 'MF-02BL' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'BLUE' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 196 AS [productorder], 'MF-02GN' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'GREAN' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 197 AS [productorder], 'PBC-02' AS [sku], 'PENNANT FLAGS' AS [producttitle], '60’' AS [size], 'RED' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 198 AS [productorder], 'PBC-04' AS [sku], 'PENNANT FLAGS' AS [producttitle], '100’' AS [size], 'MULTI' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 199 AS [productorder], 'AF-01' AS [sku], 'HEAVY DUTY NYLON' AS [producttitle], '36x36' AS [size], 'NYLON' AS [material], 'AIRPORT FLAG' AS [category] UNION ALL 
SELECT 200 AS [productorder], 'S1010E410KA' AS [sku], 'MASTER LOCK PORTABLE ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 201 AS [productorder], '1457VE410KA' AS [sku], 'MASTER LOCK PORTABLE VALVE AND ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 202 AS [productorder], '410RED' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 203 AS [productorder], '410YLW' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 204 AS [productorder], '410ORG' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'ORANGE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 205 AS [productorder], '410BLU' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 206 AS [productorder], '410TEAL' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'TEAL' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 207 AS [productorder], '410PRP' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'PURPLE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 208 AS [productorder], '410GRN' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 209 AS [productorder], '410BLK' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 210 AS [productorder], '3RED' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 211 AS [productorder], '3BLU' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLUE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 212 AS [productorder], '3GRN' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'GREEN' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 213 AS [productorder], '3WHT' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'WHITE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 214 AS [productorder], '3YLW' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 215 AS [productorder], '3BLK' AS [sku], 'MASTER LOCK MODEL NO 3 LAMINATED STEEL SAFETY PADLOCK' AS [producttitle], '' AS [size], 'BLACK' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 216 AS [productorder], 'S806' AS [sku], 'MASTER LOCK VALVE LOCKOUT ADJUSTABLE CABLE' AS [producttitle], '6’' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 217 AS [productorder], '493B' AS [sku], 'MASTER LOCK GRIP TIGHT ELECTRICAL LOCKOUT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 218 AS [productorder], 'S3821' AS [sku], 'MASTER LOCK LOCKOUT DEVICE MINIATURE CIRCUIT BREAKER 120/240V' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 219 AS [productorder], 'HM-125' AS [sku], '10 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 220 AS [productorder], 'HM-126' AS [sku], '30 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 221 AS [productorder], 'HM-96' AS [sku], 'CERTIFIED FORKLIFT DRIVER WITH FORKLIFT PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 222 AS [productorder], 'HM-97' AS [sku], 'FALL PROTECTION TRAINED PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 223 AS [productorder], 'HM-113' AS [sku], 'LOCKOUT TAG-OUT TRAINED WITH PICTO OF HASP TAG & LOCK - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 224 AS [productorder], 'HMRS-522' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 225 AS [productorder], 'HMRS-523' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE YELLOW' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 226 AS [productorder], 'HMRS-524' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 227 AS [productorder], 'HMRS-525' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE BLUE' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 228 AS [productorder], 'G4-26314' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 229 AS [productorder], 'G4-26313' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'PLASTIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 230 AS [productorder], 'G4-26311' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ALUMINUM' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 231 AS [productorder], 'FWS-F2' AS [sku], 'FIRE WALL RATED FOR 2 HOURS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 232 AS [productorder], 'FWS-FS' AS [sku], 'FIRE AND SMOKE BARRIER PROTECT ALL OPENINGS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 233 AS [productorder], 'FWS-F6' AS [sku], 'SMOKE WALL PROTECT ALL PENETRATIONS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 234 AS [productorder], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 235 AS [productorder], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 236 AS [productorder], 'P-0488' AS [sku], 'CAUTION WET FLOOR - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 237 AS [productorder], 'P-0489' AS [sku], 'CAUTION WET FLOOR CUIDADA PISO MOJADO - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 238 AS [productorder], 'R1-1RA16' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 239 AS [productorder], 'R1-1RA22' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 240 AS [productorder], 'R1-2RA22' AS [sku], 'YIELD - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 241 AS [productorder], 'R5-1RA16' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 242 AS [productorder], 'R5-1HIA22' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 243 AS [productorder], 'R2-1HIA9' AS [sku], 'SPEED LIMIT SIGN' AS [producttitle], '24x18' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 244 AS [productorder], 'W11-2ADG16' AS [sku], 'PEDESTRIAN CROSSING SYMBOL - WARNING TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'HIP ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 245 AS [productorder], 'R-70AL5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 246 AS [productorder], 'R-70RA5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 247 AS [productorder], 'R7-8NRA5' AS [sku], 'RESERVED PARKING PICTO - HANDICAPPED PARKING SIGN' AS [producttitle], '18x12' AS [size], 'EGP ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 248 AS [productorder], 'W-65HIA32' AS [sku], 'ROAD WORK AHEAD - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '48x48' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 249 AS [productorder], 'W3-4HIA27' AS [sku], 'BE PREPARED TO STOP - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '36x36' AS [size], 'HIP ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 250 AS [productorder], 'SMV-1' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 251 AS [productorder], 'SMV-2' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'REFLECTIVE ALUMINUM' AS [material], 'Slow Moving Vehicle Emblems' AS [category] UNION ALL 
SELECT 252 AS [productorder], 'PL-17R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 10" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 253 AS [productorder], 'PL-18R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'EGP ALUMINUM 72" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 254 AS [productorder], 'PL-25R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '24x24' AS [size], 'EGP ALUMINUM 81" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 255 AS [productorder], 'DL-1000W' AS [sku], 'TRAFFIC SIGN STAND - ROLL UP' AS [producttitle], '36x36' AS [size], 'ALUMINUM | STEEL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 256 AS [productorder], 'MSR-1' AS [sku], 'BE PREPARED TO STOP ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 257 AS [productorder], 'MSR-10' AS [sku], 'ROAD WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 258 AS [productorder], 'MSR-24' AS [sku], 'UTILITY WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 259 AS [productorder], 'P-8' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 260 AS [productorder], 'P-10' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 261 AS [productorder], 'P-12' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 262 AS [productorder], 'GP-8' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 263 AS [productorder], 'GP-10' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 264 AS [productorder], 'GP-12' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 265 AS [productorder], 'ST-5' AS [sku], 'PORTABLE SIGN BASE AND POST' AS [producttitle], '48x18' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 266 AS [productorder], 'REFCONE-18' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '18”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 267 AS [productorder], 'REFCONE-28' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '28”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 268 AS [productorder], 'PLT-03' AS [sku], 'PLACARD HOLDER WITH 5 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 269 AS [productorder], 'PLT-04' AS [sku], 'PLACARD HOLDER WITH 8 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 270 AS [productorder], 'DOT-26804' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 271 AS [productorder], 'DOT-26801' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 272 AS [productorder], 'DOT-08374' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 273 AS [productorder], 'DOT-08379' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 274 AS [productorder], 'DOT-96754' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 275 AS [productorder], 'DOT-96759' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category]


--20251223
SELECT 1 AS [order], 'D-111031' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 2 AS [order], 'D-111033' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 3 AS [order], 'D-111431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 4 AS [order], 'D-111433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 5 AS [order], 'D-162531' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 6 AS [order], 'D-162533' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 7 AS [order], 'D-874231' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 8 AS [order], 'D-874233' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 9 AS [order], 'D-260231' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 10 AS [order], 'D-260233' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 11 AS [order], 'D-370831' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 12 AS [order], 'D-370833' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 13 AS [order], 'D-371131' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 14 AS [order], 'D-371133' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 15 AS [order], 'D-372631' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 16 AS [order], 'D-372633' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 17 AS [order], 'D-373931' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 18 AS [order], 'D-373933' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 19 AS [order], 'D-441731' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 20 AS [order], 'D-441733' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 21 AS [order], 'D-450131' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 22 AS [order], 'D-450133' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 23 AS [order], 'D-472331' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 24 AS [order], 'D-472333' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 25 AS [order], 'D-474231' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 26 AS [order], 'D-474233' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 27 AS [order], 'D-475631' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 28 AS [order], 'D-475633' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 29 AS [order], 'D-570131' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 30 AS [order], 'D-570133' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 31 AS [order], 'D-570331' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 32 AS [order], 'D-570333' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 33 AS [order], 'D-571231' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 34 AS [order], 'D-571233' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 35 AS [order], 'D-460731' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 36 AS [order], 'D-460733' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 37 AS [order], 'N-001331' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 38 AS [order], 'N-001333' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 39 AS [order], 'N-370331' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 40 AS [order], 'N-370333' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 41 AS [order], 'N-475131' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 42 AS [order], 'N-475133' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 43 AS [order], 'N-710531' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 44 AS [order], 'N-710533' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 45 AS [order], 'C-080631' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 46 AS [order], 'C-080633' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 47 AS [order], 'C-083031' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 48 AS [order], 'C-083033' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 49 AS [order], 'C-162731' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 50 AS [order], 'C-162733' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 51 AS [order], 'C-961731' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 52 AS [order], 'C-961733' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 53 AS [order], 'C-920631' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 54 AS [order], 'C-920633' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 55 AS [order], 'M-070231' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 56 AS [order], 'M-070233' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 57 AS [order], 'M-070431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 58 AS [order], 'M-070433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 59 AS [order], 'M-000531' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 60 AS [order], 'M-000533' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 61 AS [order], 'M-071331' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 62 AS [order], 'M-071333' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 63 AS [order], 'M-995731' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 64 AS [order], 'M-995733' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 65 AS [order], 'M-001431' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 66 AS [order], 'M-001433' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 67 AS [order], 'M-993731' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 68 AS [order], 'M-993733' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 69 AS [order], 'G-934531' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 70 AS [order], 'G-934533' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 71 AS [order], 'G-170831' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 72 AS [order], 'G-170833' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 73 AS [order], 'G-267131' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 74 AS [order], 'G-267133' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 75 AS [order], 'G-271031' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 76 AS [order], 'G-271033' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 77 AS [order], 'G-781431' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 78 AS [order], 'G-781433' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 79 AS [order], 'G-485631' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 80 AS [order], 'G-485633' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 81 AS [order], 'G-486031' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 82 AS [order], 'G-486033' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 83 AS [order], 'G-490831' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 84 AS [order], 'G-490833' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 85 AS [order], 'G-911131' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 86 AS [order], 'G-911133' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 87 AS [order], 'EM-017' AS [sku], 'MAP HOLDER' AS [producttitle], '12.5x18.5' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 88 AS [order], 'EM-085' AS [sku], 'MAP HOLDER' AS [producttitle], '10x12' AS [size], 'LEXAN' AS [material], 'Evacuation Map Holder' AS [category] UNION ALL 
SELECT 89 AS [order], 'PWS-100' AS [sku], 'AED RED HEART WITH FLASH - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 90 AS [order], 'PWS-2' AS [sku], 'EYE WASH WITH FOUNTAIN PICTO - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 91 AS [order], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 92 AS [order], 'PWS-5' AS [sku], 'FIRST AID WITH CROSS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 93 AS [order], 'PWS-70' AS [sku], 'SEVERE WEATHER SHELTER WITH TORNADO AND HOUSE SYMBOLS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Projecting Wall Signs' AS [category] UNION ALL 
SELECT 94 AS [order], 'FD-49' AS [sku], 'PEDESTRIAN AISLE PICTO FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 95 AS [order], 'FD-46' AS [sku], 'PPE REQUIRED BEYOND THIS POINT WITH THREE WORKER HEADS PICTOS FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 96 AS [order], 'FD-9901' AS [sku], 'STOP FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'Floor Decals' AS [category] UNION ALL 
SELECT 97 AS [order], 'RT1-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 98 AS [order], 'RT2-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 99 AS [order], 'RT1-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 100 AS [order], 'RT2-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 101 AS [order], 'RT1-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 102 AS [order], 'RT2-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 103 AS [order], 'RT1-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 104 AS [order], 'RT2-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 105 AS [order], 'RT1-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 106 AS [order], 'RT2-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 107 AS [order], 'RT1-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 108 AS [order], 'RT2-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 109 AS [order], 'RT1-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 110 AS [order], 'RT2-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 111 AS [order], 'RT1-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 112 AS [order], 'RT2-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 113 AS [order], 'RT1-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], '100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 114 AS [order], 'RT2-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], '250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 115 AS [order], 'VT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 116 AS [order], 'TB-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 117 AS [order], 'LT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 118 AS [order], 'VT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 119 AS [order], 'TB-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 120 AS [order], 'LT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 121 AS [order], 'VT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 122 AS [order], 'TB-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 123 AS [order], 'LT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 124 AS [order], 'VT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 125 AS [order], 'TB-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 126 AS [order], 'LT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 127 AS [order], 'VT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 128 AS [order], 'TB-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 129 AS [order], 'LT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 130 AS [order], 'VT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 131 AS [order], 'TB-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 132 AS [order], 'LT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 133 AS [order], 'VT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 134 AS [order], 'TB-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 135 AS [order], 'LT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 136 AS [order], 'VT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 137 AS [order], 'TB-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 138 AS [order], 'LT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 139 AS [order], 'VT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 140 AS [order], 'TB-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 141 AS [order], 'LT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 142 AS [order], 'VT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 143 AS [order], 'TB-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 144 AS [order], 'LT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 145 AS [order], 'VT-992' AS [sku], 'DO NOT OPERATE TAG LOCK TO BE REMOVED BY PERSON TAG WITH PHOTO' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 146 AS [order], 'VT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 147 AS [order], 'TB-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 148 AS [order], 'LT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 149 AS [order], 'VT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 150 AS [order], 'TB-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 151 AS [order], 'LT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 152 AS [order], 'VT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 153 AS [order], 'TB-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 154 AS [order], 'LT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 155 AS [order], 'VT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 156 AS [order], 'TB-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 157 AS [order], 'LT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 158 AS [order], 'VT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 159 AS [order], 'TB-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 160 AS [order], 'LT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 161 AS [order], 'VT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 162 AS [order], 'TB-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 163 AS [order], 'LT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 164 AS [order], 'VT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 165 AS [order], 'TB-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 166 AS [order], 'LT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 167 AS [order], 'VT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 168 AS [order], 'TB-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 169 AS [order], 'LT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 170 AS [order], 'VT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 171 AS [order], 'TB-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 172 AS [order], 'LT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 173 AS [order], 'VT-179' AS [sku], 'BLANK WHITE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 174 AS [order], 'VT-180' AS [sku], 'BLANK RED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 175 AS [order], 'BT4058' AS [sku], 'BARRICADE TAPE - CAUTION' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 176 AS [order], 'BT4044' AS [sku], 'BARRICADE TAPE - CAUTION DO NOT ENTER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 177 AS [order], 'BT4057' AS [sku], 'BARRICADE TAPE - DANGER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 178 AS [order], 'BT4064' AS [sku], 'BARRICADE TAPE - DANGER HIGH VOLTAGE AREA' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 179 AS [order], 'WBC-03' AS [sku], 'CAUTION WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 180 AS [order], 'WBC-04' AS [sku], 'DANGER WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 181 AS [order], 'WBC-02RB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH RED' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 182 AS [order], 'WBC-02YB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH YELLOW' AS [producttitle], '2”x200’' AS [size], 'PLASTIC' AS [material], 'Woven Plastic Barrier Tape' AS [category] UNION ALL 
SELECT 183 AS [order], 'V57203SR' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x30’' AS [size], 'RED|WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 184 AS [order], 'V5720WH' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x150’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 185 AS [order], 'RST111' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH WHITE' AS [producttitle], '1”x30’' AS [size], 'REF WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 186 AS [order], 'RST112' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH RED' AS [producttitle], '1”x30’' AS [size], 'REF RED' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 187 AS [order], 'RST106' AS [sku], 'STRIPED REFLECTIVE SAFETY TAPE - 2 INCH' AS [producttitle], '2”x30’' AS [size], 'REF BLK|YLW' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 188 AS [order], 'SG3104B' AS [sku], 'SAFE STEP ANTI-SKID TAPE' AS [producttitle], '4”x60’' AS [size], '' AS [material], 'Anti-Skid Tape' AS [category] UNION ALL 
SELECT 189 AS [order], 'MF-02WH' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'WHITE' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 190 AS [order], 'MF-02RD' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'RED' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 191 AS [order], 'PBC-02' AS [sku], 'PENNANT FLAGS' AS [producttitle], '60’' AS [size], 'RED' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 192 AS [order], 'PBC-04' AS [sku], 'PENNANT FLAGS' AS [producttitle], '100’' AS [size], 'MULTI' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 193 AS [order], 'AF-01' AS [sku], 'HEAVY DUTY NYLON' AS [producttitle], '36x36' AS [size], 'NYLON' AS [material], 'AIRPORT FLAG' AS [category] UNION ALL 
SELECT 194 AS [order], 'S1010E410KA' AS [sku], 'MASTER LOCK PORTABLE ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 195 AS [order], '1457VE410KA' AS [sku], 'MASTER LOCK PORTABLE VALVE AND ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 196 AS [order], '410RED' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 197 AS [order], '410YLW' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 198 AS [order], '410BLK' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC WHITE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 199 AS [order], 'S806' AS [sku], 'MASTER LOCK VALVE LOCKOUT ADJUSTABLE CABLE' AS [producttitle], '6’' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 200 AS [order], '493B' AS [sku], 'MASTER LOCK GRIP TIGHT ELECTRICAL LOCKOUT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 201 AS [order], 'S3821' AS [sku], 'MASTER LOCK LOCKOUT DEVICE MINIATURE CIRCUIT BREAKER 120/240V' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 202 AS [order], 'HM-125' AS [sku], '10 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 203 AS [order], 'HM-126' AS [sku], '30 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 204 AS [order], 'HM-96' AS [sku], 'CERTIFIED FORKLIFT DRIVER WITH FORKLIFT PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 205 AS [order], 'HM-97' AS [sku], 'FALL PROTECTION TRAINED PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 206 AS [order], 'HM-113' AS [sku], 'LOCKOUT TAG-OUT TRAINED WITH PICTO OF HASP TAG & LOCK - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 207 AS [order], 'HMRS-522' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 208 AS [order], 'HMRS-523' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE YELLOW' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 209 AS [order], 'HMRS-524' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE RED' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 210 AS [order], 'HMRS-525' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE BLUE' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 211 AS [order], 'G4-26314' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 212 AS [order], 'G4-26311' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ALUMINUM' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 213 AS [order], 'G4-26313' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'PLASTIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 214 AS [order], 'FWS-F6' AS [sku], 'SMOKE WALL PROTECT ALL PENETRATIONS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 215 AS [order], 'FWS-F2' AS [sku], 'FIRE WALL RATED FOR 2 HOURS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 216 AS [order], 'FWS-FS' AS [sku], 'FIRE AND SMOKE BARRIER PROTECT ALL OPENINGS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 217 AS [order], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 218 AS [order], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 219 AS [order], 'FFS-7' AS [sku], 'CAUTION WORKERS WORKING BELOW AND ABOVE FOLDING FLOOR STANDS' AS [producttitle], '20x12' AS [size], 'COROPLAST' AS [material], 'Folding Floor Stands' AS [category] UNION ALL 
SELECT 220 AS [order], 'FFS-20' AS [sku], 'DANGER WORKERS WORKING BELOW AND ABOVE FOLDING FLOOR STANDS' AS [producttitle], '20x12' AS [size], 'COROPLAST' AS [material], 'Folding Floor Stands' AS [category] UNION ALL 
SELECT 221 AS [order], 'P-0488' AS [sku], 'CAUTION WET FLOOR - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 222 AS [order], 'P-0489' AS [sku], 'CAUTION WET FLOOR CUIDADA PISO MOJADO - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 223 AS [order], 'R1-1RA16' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 224 AS [order], 'R1-1RA22' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '30x30' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 225 AS [order], 'R1-2RA22' AS [sku], 'YIELD - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 226 AS [order], 'R5-1RA16' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '24x24' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 227 AS [order], 'R5-1HIA22' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 228 AS [order], 'R2-1HIA9' AS [sku], 'SPEED LIMIT SIGN' AS [producttitle], '24x18' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 229 AS [order], 'W11-2ADG16' AS [sku], 'PEDESTRIAN CROSSING SYMBOL - WARNING TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 230 AS [order], 'R-70AL5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 231 AS [order], 'R-70RA5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 232 AS [order], 'R7-8NRA5' AS [sku], 'RESERVED PARKING PICTO - HANDICAPPED PARKING SIGN' AS [producttitle], '18x12' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 233 AS [order], 'W-65HIA32' AS [sku], 'ROAD WORK AHEAD - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '48x48' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 234 AS [order], 'W3-4HIA27' AS [sku], 'BE PREPARED TO STOP - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '36x36' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 235 AS [order], 'SMV-1' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'ALUMINUM' AS [material], 'Slow Moving Vehicle Emblem' AS [category] UNION ALL 
SELECT 236 AS [order], 'SMV-2' AS [sku], 'SLOW MOVING VEHICLE SIGN HIGH REF' AS [producttitle], '14x16' AS [size], 'REFLECTIVE ALUMINUM' AS [material], 'Slow Moving Vehicle Emblem' AS [category] UNION ALL 
SELECT 237 AS [order], 'PL-17R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'REFLECTIVE ALUMINUM - 10" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 238 AS [order], 'PL-18R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'REFLECTIVE ALUMINUM - 72" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 239 AS [order], 'PL-25R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '24x24' AS [size], 'REFLECTIVE ALUMINUM - 81" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 240 AS [order], 'DL-1000W' AS [sku], 'TRAFFIC SIGN STAND - ROLL UP' AS [producttitle], '36x36' AS [size], 'ALUMINUM AND STEEL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 241 AS [order], 'MSR-1' AS [sku], 'BE PREPARED TO STOP ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 242 AS [order], 'MSR-10' AS [sku], 'ROAD WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 243 AS [order], 'MSR-24' AS [sku], 'UTILITY WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 244 AS [order], 'P-8' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 245 AS [order], 'P-10' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 246 AS [order], 'P-12' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 247 AS [order], 'GP-8' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 248 AS [order], 'GP-10' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 249 AS [order], 'GP-12' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 250 AS [order], 'ST-5' AS [sku], 'PORTABLE SIGN BASE AND POST' AS [producttitle], '48x18' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 251 AS [order], 'REFCONE-28' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '28”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 252 AS [order], 'REFCONE-18' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '18”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 253 AS [order], 'PLT-03' AS [sku], 'PLACARD HOLDER WITH 5 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 254 AS [order], 'PLT-04' AS [sku], 'PLACARD HOLDER WITH 8 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 255 AS [order], 'DOT-26804' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 256 AS [order], 'DOT-26801' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 257 AS [order], 'DOT-08374' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 258 AS [order], 'DOT-08379' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 259 AS [order], 'DOT-96754' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 260 AS [order], 'DOT-96759' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category]


--20251218
SELECT 1 AS [order], 'D-111031' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 2 AS [order], 'D-111033' AS [sku], 'DO NOT ENTER - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 3 AS [order], 'D-111431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 4 AS [order], 'D-111433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 5 AS [order], 'D-162531' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 6 AS [order], 'D-162533' AS [sku], 'EXPLOSIVES KEEP AWAY - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 7 AS [order], 'D-874231' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 8 AS [order], 'D-874233' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 9 AS [order], 'D-260231' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 10 AS [order], 'D-260233' AS [sku], 'FALLING MATERIAL - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 11 AS [order], 'D-370831' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 12 AS [order], 'D-370833' AS [sku], 'HARD HAT AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 13 AS [order], 'D-371131' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 14 AS [order], 'D-371133' AS [sku], 'HAZARDOUS AREA - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 15 AS [order], 'D-372631' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 16 AS [order], 'D-372633' AS [sku], 'HIGH VOLTAGE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 17 AS [order], 'D-373931' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 18 AS [order], 'D-373933' AS [sku], 'HIGH VOLTAGE KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 19 AS [order], 'D-441731' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 20 AS [order], 'D-441733' AS [sku], 'KEEP OUT - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 21 AS [order], 'D-450131' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 22 AS [order], 'D-450133' AS [sku], 'LASER WITH LASER PICTO - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 23 AS [order], 'D-472331' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 24 AS [order], 'D-472333' AS [sku], 'NO SMOKING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 25 AS [order], 'D-474231' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 26 AS [order], 'D-474233' AS [sku], 'NO SMOKING OR OPEN FLAMES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 27 AS [order], 'D-475631' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 28 AS [order], 'D-475633' AS [sku], 'NO TRESPASSING - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 29 AS [order], 'D-570131' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 30 AS [order], 'D-570133' AS [sku], 'OPEN EXCAVATION - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 31 AS [order], 'D-570331' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 32 AS [order], 'D-570333' AS [sku], 'OPEN HOLE - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 33 AS [order], 'D-571231' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 34 AS [order], 'D-571233' AS [sku], 'OVERHEAD POWER LINES - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 35 AS [order], 'D-460731' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 36 AS [order], 'D-460733' AS [sku], 'WORKERS WORKING ABOVE UP ARROWS - DANGER SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Danger Signs' AS [category] UNION ALL 
SELECT 37 AS [order], 'N-001331' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 38 AS [order], 'N-001333' AS [sku], 'AUTHORIZED PERSONNEL ONLY - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 39 AS [order], 'N-370331' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 40 AS [order], 'N-370333' AS [sku], 'HARD HATS AND SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 41 AS [order], 'N-475131' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 42 AS [order], 'N-475133' AS [sku], 'NOTICE BLANK - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 43 AS [order], 'N-710531' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 44 AS [order], 'N-710533' AS [sku], 'SAFETY GLASSES REQUIRED BEYOND THIS POINT - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 45 AS [order], 'N-965131' AS [sku], 'VIDEO SURVEILLANCE IN USE ON THESE PREMISES WITH PICTO - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 46 AS [order], 'N-965133' AS [sku], 'VIDEO SURVEILLANCE IN USE ON THESE PREMISES WITH PICTO - NOTICE SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Notice Signs' AS [category] UNION ALL 
SELECT 47 AS [order], 'C-080631' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 48 AS [order], 'C-080633' AS [sku], 'CAUTION BLANK - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 49 AS [order], 'C-083031' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 50 AS [order], 'C-083033' AS [sku], 'CONSTRUCTION AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 51 AS [order], 'C-162731' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 52 AS [order], 'C-162733' AS [sku], 'EYE PROTECTION REQUIRED - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 53 AS [order], 'C-961731' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 54 AS [order], 'C-961733' AS [sku], 'HEARING PROTECTION REQUIRED IN THIS AREA - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 55 AS [order], 'C-920631' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 56 AS [order], 'C-920633' AS [sku], 'WATCH YOUR STEP - CAUTION SIGN' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'Caution Signs' AS [category] UNION ALL 
SELECT 57 AS [order], 'M-070231' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 58 AS [order], 'M-070233' AS [sku], 'CONSTRUCTION AREA KEEP OUT PELIGRO ÁREA DE CONSTRUCCIÓN NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 59 AS [order], 'M-070431' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 60 AS [order], 'M-070433' AS [sku], 'DO NOT ENTER AUTHORIZED PERSONNEL ONLY PELIGRO NO ENTRE SOLO - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 61 AS [order], 'M-000531' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 62 AS [order], 'M-000533' AS [sku], 'DO NOT ENTER PELIGRO NO ENTRE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 63 AS [order], 'M-071331' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 64 AS [order], 'M-071333' AS [sku], 'FALL PROTECTION REQUIRED BEYOND THIS POINT PELIGRO PROTECCION DE CAÍDA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 65 AS [order], 'M-995731' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 66 AS [order], 'M-995733' AS [sku], 'KEEP OUT/ PELIGRO MANTENGASE AFUERA - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 67 AS [order], 'M-001431' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 68 AS [order], 'M-001433' AS [sku], 'NO SMOKING PELIGRO NO FUMAR - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 69 AS [order], 'M-993731' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 70 AS [order], 'M-993733' AS [sku], 'NO TRESPASSING PELIGRO NO TRASPASE - DANGER SIGN' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'Bilingual Signs' AS [category] UNION ALL 
SELECT 71 AS [order], 'G-934531' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 72 AS [order], 'G-934533' AS [sku], 'AUTHORIZED PERSONNEL ONLY' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 73 AS [order], 'G-170831' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 74 AS [order], 'G-170833' AS [sku], 'EYE WASH STATION' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 75 AS [order], 'G-267131' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 76 AS [order], 'G-267133' AS [sku], 'FIRST AID KIT' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 77 AS [order], 'G-271031' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 78 AS [order], 'G-271033' AS [sku], 'FULL CYLINDERS' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 79 AS [order], 'G-781431' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 80 AS [order], 'G-781433' AS [sku], 'MUSTER AREA' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 81 AS [order], 'G-485631' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 82 AS [order], 'G-485633' AS [sku], 'NO SMOKING - RED ON WHITE' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 83 AS [order], 'G-486031' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 84 AS [order], 'G-486033' AS [sku], 'NO SMOKING WITH SMOKING PICTO' AS [producttitle], '14x10' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 85 AS [order], 'G-490831' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 86 AS [order], 'G-490833' AS [sku], 'NO TRESPASSING' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 87 AS [order], 'G-911131' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'ALUMINUM' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 88 AS [order], 'G-911133' AS [sku], 'PPE REQUIRED' AS [producttitle], '10x14' AS [size], 'PLASTIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 89 AS [order], 'EM-017' AS [sku], 'MAP HOLDER FOR 11”X17” MAP WITH 2 ADHESIVE STRIPS' AS [producttitle], '12.5x18.5' AS [size], 'LEXAN' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 90 AS [order], 'EM-085' AS [sku], 'MAP HOLDER FOR 8.5”X11” MAP WITH 2 ADHESIVE STRIPS' AS [producttitle], '10x12' AS [size], 'LEXAN' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 91 AS [order], 'PWS-100' AS [sku], 'AED RED HEART WITH FLASH - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 92 AS [order], 'PWS-2' AS [sku], 'EYE WASH WITH FOUNTAIN PICTO - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 93 AS [order], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 94 AS [order], 'PWS-5' AS [sku], 'FIRST AID WITH CROSS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 95 AS [order], 'PWS-70' AS [sku], 'SEVERE WEATHER SHELTER WITH TORNADO AND HOUSE SYMBOLS - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 96 AS [order], 'FD-49' AS [sku], 'PEDESTRIAN AISLE PICTO FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 97 AS [order], 'FD-46' AS [sku], 'PPE REQUIRED BEYOND THIS POINT WITH THREE WORKER HEADS PICTOS FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 98 AS [order], 'FD-9901' AS [sku], 'STOP FLOOR DECAL' AS [producttitle], '17x17' AS [size], 'ANTI-SLIP' AS [material], 'General Signs' AS [category] UNION ALL 
SELECT 99 AS [order], 'RT1-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 100 AS [order], 'RT2-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 101 AS [order], 'RT1-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 102 AS [order], 'RT2-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 103 AS [order], 'RT1-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 104 AS [order], 'RT2-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 105 AS [order], 'RT1-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 106 AS [order], 'RT2-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 107 AS [order], 'RT1-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 108 AS [order], 'RT2-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 109 AS [order], 'RT1-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 110 AS [order], 'RT2-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 111 AS [order], 'RT1-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 112 AS [order], 'RT2-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 113 AS [order], 'RT1-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 114 AS [order], 'RT2-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 115 AS [order], 'RT1-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 100|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 116 AS [order], 'RT2-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'SYNTHETIC 250|ROLL' AS [material], 'Safety on a Roll Tags' AS [category] UNION ALL 
SELECT 117 AS [order], 'VT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 118 AS [order], 'TB-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 119 AS [order], 'LT-182' AS [sku], 'DANGER BARRICADE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 120 AS [order], 'VT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 121 AS [order], 'TB-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 122 AS [order], 'LT-101-2' AS [sku], 'DANGER BLANK TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 123 AS [order], 'VT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 124 AS [order], 'TB-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 125 AS [order], 'LT-108-1' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 1' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 126 AS [order], 'VT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 127 AS [order], 'TB-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 128 AS [order], 'LT-108-2' AS [sku], 'DANGER DO NOT OPERATE TAGS - BACK 2' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 129 AS [order], 'VT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 130 AS [order], 'TB-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 131 AS [order], 'LT-312' AS [sku], 'CAUTION BARRICADE TAG POTENTIAL HAZARD TAG' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Accident Prevention Tags' AS [category] UNION ALL 
SELECT 132 AS [order], 'VT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 133 AS [order], 'TB-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 134 AS [order], 'LT-1004' AS [sku], 'DANGER DO NOT OPERATE - THIS TAG AND LOCK TO BE REMOVED TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 135 AS [order], 'VT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 136 AS [order], 'TB-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 137 AS [order], 'LT-176' AS [sku], 'DANGER DO NOT OPERATE DATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 138 AS [order], 'VT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 139 AS [order], 'TB-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 140 AS [order], 'LT-149' AS [sku], 'DANGER DO NOT OPERATE TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 141 AS [order], 'VT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 142 AS [order], 'TB-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 143 AS [order], 'LT-177' AS [sku], 'DANGER DO NOT OPERATE THIS ENERGY SOURCE HAS BEEN LOCKED OUT TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 144 AS [order], 'VT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 145 AS [order], 'TB-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 146 AS [order], 'LT-147' AS [sku], 'DANGER EQUIPMENT LOCKED BY TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 147 AS [order], 'VT-992' AS [sku], 'DO NOT OPERATE TAG LOCK TO BE REMOVED BY PERSON TAG WITH PHOTO' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Lockout Tags' AS [category] UNION ALL 
SELECT 148 AS [order], 'VT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 149 AS [order], 'TB-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 150 AS [order], 'LT-1005' AS [sku], 'DANGER THIS TAG & LOCK TO BE REMOVED ONLY BY THE PERSON TAG' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Bilingual Tags' AS [category] UNION ALL 
SELECT 151 AS [order], 'VT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 152 AS [order], 'TB-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 153 AS [order], 'LT-201' AS [sku], 'EMERGENCY SHOWER & EYE WASH TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 154 AS [order], 'VT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 155 AS [order], 'TB-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 156 AS [order], 'LT-206' AS [sku], 'FIRE EXTINGUISHER RECHARGE AND INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 157 AS [order], 'VT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 158 AS [order], 'TB-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 159 AS [order], 'LT-205' AS [sku], 'FIRE EXTINGUISHER TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 160 AS [order], 'VT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 161 AS [order], 'TB-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 162 AS [order], 'LT-423' AS [sku], 'LADDER INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 163 AS [order], 'VT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 164 AS [order], 'TB-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 165 AS [order], 'LT-422' AS [sku], 'SCAFFOLD INSPECTION TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Inspection Tags' AS [category] UNION ALL 
SELECT 166 AS [order], 'VT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 167 AS [order], 'TB-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 168 AS [order], 'LT-712' AS [sku], 'SCAFFOLD OK TAGS' AS [producttitle], '6x3' AS [size], 'LAMINATED 10|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 169 AS [order], 'VT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 170 AS [order], 'TB-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 171 AS [order], 'LT-713' AS [sku], 'CAUTION SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 172 AS [order], 'VT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 173 AS [order], 'TB-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 174 AS [order], 'LT-714' AS [sku], 'DANGER SCAFFOLD TAGS' AS [producttitle], '6x3' AS [size], 'TAGBOARD 25|PACK' AS [material], 'Scaffold Tags' AS [category] UNION ALL 
SELECT 175 AS [order], 'VT-179' AS [sku], 'BLANK WHITE TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 176 AS [order], 'VT-180' AS [sku], 'BLANK RED TAGS' AS [producttitle], '6x3' AS [size], 'RIGID VINYL 25|PACK' AS [material], 'Blank Tags' AS [category] UNION ALL 
SELECT 177 AS [order], 'BT4058' AS [sku], 'BARRICADE TAPE - CAUTION' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 178 AS [order], 'BT4044' AS [sku], 'BARRICADE TAPE - CAUTION DO NOT ENTER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 179 AS [order], 'BT4057' AS [sku], 'BARRICADE TAPE - DANGER' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 180 AS [order], 'BT4064' AS [sku], 'BARRICADE TAPE - DANGER HIGH VOLTAGE AREA' AS [producttitle], '3”x1000’' AS [size], '' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 181 AS [order], 'WBC-03' AS [sku], 'CAUTION WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'POLYETHLENE' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 182 AS [order], 'WBC-04' AS [sku], 'DANGER WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'POLYETHLENE' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 183 AS [order], 'WBC-02RB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'POLYETHLENE RED|BLACK' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 184 AS [order], 'WBC-02YB' AS [sku], 'WOVEN PLASTIC BARRIER TAPE - 2 INCH' AS [producttitle], '2”x200’' AS [size], 'POLYETHLENE YELLOW|BLACK' AS [material], 'Barricade Tape' AS [category] UNION ALL 
SELECT 185 AS [order], 'V57203SR' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x30’' AS [size], 'RED|WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 186 AS [order], 'V5720WH' AS [sku], 'CONSPICUITY REFLECTIVE TAPE' AS [producttitle], '2”x150’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 187 AS [order], 'RST111' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH' AS [producttitle], '1”x30’' AS [size], 'WHITE' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 188 AS [order], 'RST112' AS [sku], 'REFLECTIVE SAFETY TAPE - 1 INCH' AS [producttitle], '1”x30’' AS [size], 'RED' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 189 AS [order], 'RST106' AS [sku], 'STRIPED REFLECTIVE SAFETY TAPE - 2 INCH' AS [producttitle], '2”x30’' AS [size], 'BLACK|YELLOW' AS [material], 'Reflective and Conspicuity Tape' AS [category] UNION ALL 
SELECT 190 AS [order], 'SG3104B' AS [sku], 'SAFE STEP ANTI-SKID TAPE' AS [producttitle], '4”x60’' AS [size], '' AS [material], 'Anti-Skid Tape' AS [category] UNION ALL 
SELECT 191 AS [order], 'MF-02WH' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5x30' AS [size], 'VINYL WHITE' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 192 AS [order], 'MF-02RD' AS [sku], 'MARKING FLAGS' AS [producttitle], '2.5x3.5' AS [size], 'VINYL RED' AS [material], 'MARKING FLAGS' AS [category] UNION ALL 
SELECT 193 AS [order], 'PBC-04' AS [sku], 'PENNANT FLAGS' AS [producttitle], '100’' AS [size], 'POLYETHLENE MULTI' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 194 AS [order], 'PBC-02' AS [sku], 'PENNANT FLAGS' AS [producttitle], '60’' AS [size], 'POLYETHLENE RED' AS [material], 'PENNANT FLAGS' AS [category] UNION ALL 
SELECT 195 AS [order], 'AF-01' AS [sku], 'HEAVY DUTY NYLON' AS [producttitle], '36x36' AS [size], 'NYLON' AS [material], 'AIRPORT FLAG' AS [category] UNION ALL 
SELECT 196 AS [order], 'S1010E410KA' AS [sku], 'MASTER LOCK PORTABLE ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 197 AS [order], '1457VE410KA' AS [sku], 'MASTER LOCK PORTABLE VALVE AND ELECTRICAL LOCKOUT KIT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 198 AS [order], '410RED' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC RED' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 199 AS [order], '410YLW' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC YELLOW' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 200 AS [order], '410BLK' AS [sku], 'MASTER LOCK MODEL NO. 410 THERMOPLASTIC SAFETY PADLOCK' AS [producttitle], '1.5" SHACKLE' AS [size], 'THERMOPLASTIC WHITE' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 201 AS [order], 'S806' AS [sku], 'MASTER LOCK VALVE LOCKOUT ADJUSTABLE CABLE' AS [producttitle], '6’' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 202 AS [order], '493B' AS [sku], 'MASTER LOCK GRIP TIGHT ELECTRICAL LOCKOUT' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 203 AS [order], 'S3821' AS [sku], 'MASTER LOCK LOCKOUT DEVICE MINIATURE CIRCUIT BREAKER 120/240V' AS [producttitle], '' AS [size], '' AS [material], 'Master Lock' AS [category] UNION ALL 
SELECT 204 AS [order], 'HM-125' AS [sku], '10 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 205 AS [order], 'HM-126' AS [sku], '30 HOUR OSHA TRAINED - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 206 AS [order], 'HM-96' AS [sku], 'CERTIFIED FORKLIFT DRIVER WITH FORKLIFT PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 207 AS [order], 'HM-97' AS [sku], 'FALL PROTECTION TRAINED PICTO - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 208 AS [order], 'HM-113' AS [sku], 'LOCKOUT TAG-OUT TRAINED WITH PICTO OF HASP TAG & LOCK - HELMET / HARD HAT MARKERS' AS [producttitle], '2x2' AS [size], 'ADHESIVE VINYL 25|PACK' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 209 AS [order], 'HMRS-522' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE ADHESIVE VINYL 16|SHEET' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 210 AS [order], 'HMRS-523' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE ADHESIVE VINYL 16|SHEET' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 211 AS [order], 'HMRS-524' AS [sku], 'PREMIUM REFLECTIVE STRIPS - HELMET / HARD HAT MARKERS' AS [producttitle], '1x4' AS [size], 'REFLECTIVE ADHESIVE VINYL 16|SHEET' AS [material], 'Helmet Markers' AS [category] UNION ALL 
SELECT 212 AS [order], 'G4-26314' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 213 AS [order], 'G4-26311' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'ALUMINUM' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 214 AS [order], 'G4-26313' AS [sku], 'FIRE EXTINGUISHER RED ON WHT DOWN ARROW' AS [producttitle], '20x4' AS [size], 'PLASTIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 215 AS [order], 'FWS-F6' AS [sku], 'SMOKE WALL PROTECT ALL PENETRATIONS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 216 AS [order], 'FWS-F2' AS [sku], 'FIRE WALL RATED FOR 2 HOURS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 217 AS [order], 'FWS-FS' AS [sku], 'FIRE AND SMOKE BARRIER PROTECT ALL OPENINGS' AS [producttitle], '4x12' AS [size], 'ADHESIVE VINYL' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 218 AS [order], 'PWS-12' AS [sku], 'FIRE EXTINGUISHER WITH ARROW POINTING DOWN - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 219 AS [order], 'PWS-1' AS [sku], 'EXIT - PROJECTING WALL SIGN' AS [producttitle], '6x12' AS [size], 'ACRYLIC' AS [material], 'Fire Protection Signs' AS [category] UNION ALL 
SELECT 220 AS [order], 'FFS-7' AS [sku], 'CAUTION WORKERS WORKING BELOW AND ABOVE FOLDING FLOOR STANDS' AS [producttitle], '20x12' AS [size], 'COROPLAST' AS [material], 'Folding Floor Stands' AS [category] UNION ALL 
SELECT 221 AS [order], 'FFS-20' AS [sku], 'DANGER WORKERS WORKING BELOW AND ABOVE FOLDING FLOOR STANDS' AS [producttitle], '20x12' AS [size], 'COROPLAST' AS [material], 'Folding Floor Stands' AS [category] UNION ALL 
SELECT 222 AS [order], 'P-0488' AS [sku], 'CAUTION WET FLOOR - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 223 AS [order], 'P-0489' AS [sku], 'CAUTION WET FLOOR CUIDADA PISO MOJADO - PREMIUM FLOOR STAND' AS [producttitle], '25x11' AS [size], 'PLASTIC' AS [material], 'Premium Folding Floor Stands' AS [category] UNION ALL 
SELECT 224 AS [order], 'R1-1RA16' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 225 AS [order], 'R1-1RA22' AS [sku], 'STOP SIGN - REGULATORY TRAFFIC SIGN' AS [producttitle], '30x30' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 226 AS [order], 'R1-2RA22' AS [sku], 'YIELD - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 227 AS [order], 'R5-1RA16' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '24x24' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 228 AS [order], 'R5-1HIA22' AS [sku], 'DO NOT ENTER - REGULATORY TRAFFIC SIGNS' AS [producttitle], '30x30' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 229 AS [order], 'R2-1HIA9' AS [sku], 'SPEED LIMIT SIGN' AS [producttitle], '24x18' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 230 AS [order], 'W11-2ADG16' AS [sku], 'PEDESTRIAN CROSSING SYMBOL - WARNING TRAFFIC SIGN' AS [producttitle], '24x24' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Traffic Signs' AS [category] UNION ALL 
SELECT 231 AS [order], 'R-70AL5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 232 AS [order], 'R-70RA5' AS [sku], 'NO PARKING SIGN- RED ON WHITE WITH BORDER - PARKING CONTROL SIGNS' AS [producttitle], '18x12' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 233 AS [order], 'R7-8NRA5' AS [sku], 'RESERVED PARKING PICTO - HANDICAPPED PARKING SIGN' AS [producttitle], '18x12' AS [size], 'EGP REFLECTIVE ALUMINUM' AS [material], 'Parking Signs' AS [category] UNION ALL 
SELECT 234 AS [order], 'W-65HIA32' AS [sku], 'ROAD WORK AHEAD - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '48x48' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 235 AS [order], 'W3-4HIA27' AS [sku], 'BE PREPARED TO STOP - CONSTRUCTION TRAFFIC SIGN' AS [producttitle], '36x36' AS [size], 'HIP REFLECTIVE ALUMINUM' AS [material], 'Road Construction Signs' AS [category] UNION ALL 
SELECT 236 AS [order], 'SMV-1' AS [sku], 'SLOW MOVING VEHICLE SIGN' AS [producttitle], '14x16' AS [size], 'ALUMINUM' AS [material], 'Slow Moving Vehicle Emblem' AS [category] UNION ALL 
SELECT 237 AS [order], 'SMV-2' AS [sku], 'SLOW MOVING VEHICLE SIGN HIGH REF' AS [producttitle], '14x16' AS [size], 'REFLECTIVE ALUMINUM' AS [material], 'Slow Moving Vehicle Emblem' AS [category] UNION ALL 
SELECT 238 AS [order], 'PL-17R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'REFLECTIVE ALUMINUM - 10" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 239 AS [order], 'PL-18R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '18x18' AS [size], 'REFLECTIVE ALUMINUM - 72" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 240 AS [order], 'PL-25R' AS [sku], 'STOP SLOW PADDLE SIGN' AS [producttitle], '24x24' AS [size], 'REFLECTIVE ALUMINUM - 81" HANDLE' AS [material], 'Stop | Slow Paddle Signs' AS [category] UNION ALL 
SELECT 241 AS [order], 'DL-1000W' AS [sku], 'TRAFFIC SIGN STAND - ROLL UP' AS [producttitle], '36x36' AS [size], 'ALUMINUM AND STEEL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 242 AS [order], 'MSR-1' AS [sku], 'BE PREPARED TO STOP ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 243 AS [order], 'MSR-10' AS [sku], 'ROAD WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 244 AS [order], 'MSR-24' AS [sku], 'UTILITY WORK AHEAD ROLL UP SIGN' AS [producttitle], '48x48' AS [size], 'REFLECTIVE VINYL' AS [material], 'Roll-up Signs and Stands' AS [category] UNION ALL 
SELECT 245 AS [order], 'P-8' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 246 AS [order], 'P-10' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 247 AS [order], 'P-12' AS [sku], 'HEAVY GAUGE GREEN U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 248 AS [order], 'GP-8' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '8’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 249 AS [order], 'GP-10' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '10’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 250 AS [order], 'GP-12' AS [sku], 'HEAVY GAUGE GALVANIZED U-CHANNEL POST' AS [producttitle], '12’' AS [size], 'GALVANIZED STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 251 AS [order], 'ST-5' AS [sku], 'PORTABLE SIGN BASE AND POST' AS [producttitle], '48x18' AS [size], 'STEEL' AS [material], 'Sign Posts' AS [category] UNION ALL 
SELECT 252 AS [order], 'REFCONE-28' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '28”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 253 AS [order], 'REFCONE-18' AS [sku], 'ULTRA BRITE REFLECTIVE TRAFFIC CONES' AS [producttitle], '18”' AS [size], 'RUBBER' AS [material], 'Traffic Cones' AS [category] UNION ALL 
SELECT 254 AS [order], 'PLT-03' AS [sku], 'PLACARD HOLDER WITH 5 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 255 AS [order], 'PLT-04' AS [sku], 'PLACARD HOLDER WITH 8 LEGEND SET' AS [producttitle], '14X14' AS [size], 'ALUMINUM' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 256 AS [order], 'DOT-26804' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 257 AS [order], 'DOT-26801' AS [sku], 'DOT (FLAME PICTO) FLAMMABLE 3' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 258 AS [order], 'DOT-08374' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 259 AS [order], 'DOT-08379' AS [sku], '(PICTO) CORROSIVE CLASS 8' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 260 AS [order], 'DOT-96754' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'ADHESIVE VINYL' AS [material], 'DOT Placards and Holders' AS [category] UNION ALL 
SELECT 261 AS [order], 'DOT-96759' AS [sku], 'DOT (FLAME PICTO) 1993 FLAMMABLE LIQUIDS n.o.s. FUEL OIL DIESEL FUEL CLASS 3 PLACARD' AS [producttitle], '10.75x10.75' AS [size], 'RIGID VINYL' AS [material], 'DOT Placards and Holders' AS [category]
*/
)


SELECT 
    ISNULL([sku],'') AS [sku],
    ISNULL([producttitle],'') AS [producttitle],
    ISNULL((SELECT [Picture Name] FROM [FMP].[Products] AS x1 WHERE [SS_SIGN] = pd.[sku]), '') AS [picturename],
    ISNULL([size],'') AS [size],
    ISNULL([material],'') AS [material],
    ISNULL([category],'') AS [category],
    ISNULL([productorder],'') AS [productorder],
    ISNULL((SELECT MIN([productorder]) FROM ProductData AS x2 WHERE [category] = pd.[category] GROUP BY [category]), '') AS [categoryorder]
FROM ProductData AS pd
WHERE DATALENGTH([sku]) > 0
ORDER BY 
    [productorder],
    [categoryorder],
    [producttitle]



