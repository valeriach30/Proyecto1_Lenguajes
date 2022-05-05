(* Crear variables *)
val vp = variable "p" ;
val vq = variable "q" ;
val vr = variable "r" ;

(* Crear proposicion*)
val prop1 = vp :&&: vq :=>: vq :||: vp :=>: vp :&&: vp;
val prop2 = vp :<=>: vp :=>: vq :||: vp;
val prop3 = vp :||: vp :||: vq :||: vp;

(* Obtener variables *)
val vars1 = vars prop1;
val vars2 = vars prop2;
val vars3 = vars prop3;

(* Crear ambiente, con las variables con valores true y false *)
val amb1 = as_vals vars1 [true, false];
val amb2 = as_vals vars2 [false, false];
val amb3 = as_vals vars3 [false, true];

(* Pruebas *)
evalProp amb1 prop1;
evalProp amb2 prop2;
evalProp amb3 prop3;