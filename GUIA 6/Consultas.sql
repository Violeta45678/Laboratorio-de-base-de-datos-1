SELECT h.ID_Habitación  FROM reserva a
INNER JOIN habitación h 
ON a.Numero_Habitaciones = h.ID_Habitación

;