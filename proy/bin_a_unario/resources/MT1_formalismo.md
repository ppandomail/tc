# Máquina de Turing : "Nombre de la maquina"

## Definición

\[MT = < Г, Σ, b, Q, q_0, F, δ>]

### Conjuntos

- Г = \{0, 1, A, B, C, □}
- Σ  = \{0, 1, A, B, C\}
- b = _
- Q = \{q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31}
- q0 = q0
- F = {q13\}

### Función de Transición

- δ (q0, 0) = (q0, 0, R)
- δ (q0, 1) = (q0, 1, R)
- δ (q0, _) = (q1, _, L)
- δ (q1, 0) = (q2, 0, L)
- δ (q1, 1) = (q2, A, L)
- δ (q2, 1) = (q3, B, L)
- δ (q2, 0) = (q3, 0, L)
- δ (q3, 1) = (q4, C, L)
- δ (q3, 0) = (q4, 0, L)
- δ (q4, _) = (q5, _, R)
- δ (q5, C) = (q6, 1, R)
- δ (q6, 0) = (q9, 1, R)
- δ (q9, A) = (q10, 1, R)
- δ (q10, _) = (q14, 1, R)
- δ (q14, _) = (q15, 1, R)
- δ (q15, _) = (q13, _, S)
- δ (q9, 0) = (q11, 1, R)
- δ (q11, _) = (q12, 1, R)
- δ (q12, _) = (q13, _, S)
- δ (q6, B) = (q7, 1, R)
- δ (q7, 0) = (q18, 1, R)
- δ (q18, 1) = (q19, 1, R)
- δ (q19, _) = (q20, 1, R)
- δ (q20, _) = (q21, 1, R)
- δ (q21, _) = (q13, _, S)
- δ (q7, A) = (q8, 1, R)
- δ (q8, _) = (q16, 1, R)
- δ (q16, _) = (q17, 1, R)
- δ (q17, _) = (q22, 1, R)
- δ (q22, _) = (q23, 1, R)
- δ (q23, _) = (q13, _, S)
- δ (q5, 0) = (q24, 0, R)
- δ (q24, 0) = (q26, 0, R)
- δ (q26, 0) = (q31, 0, R)
- δ (q31, _) = (q13, _, S)
- δ (q26, A) = (q27, 1, R)
- δ (q27, _) = (q13, _, S)
- δ (q26, A) = (q27, 1, R)
- δ (q27, _) = (q13, _, S)
- δ (q24, B) = (q25, 1, R)
- δ (q25, A) = (q29, 1, R)
- δ (q29, _) = (q30, 1, R)
- δ (q30, _) = (q13, _, S)
- δ (q25, 0) = (q28, 1, R)
- δ (q28, _) = (q13, _, S)