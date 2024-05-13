Algoritmo empresa_gas
	
	Definir ant, zona, dom, domTotalZ, IM, digito, des100Z, des8Z, totalDes100Z, totalDes8Z, desTotales, domTotales, totalZonas Como Entero; 
	Definir des100, des8, M3act,M3ant, M3sum, M3valor, montoDom, recaudacionZ, montoDes100Z, montoDes8Z, totalMontoDes100Z, totalMontoDes8Z, recaudacion, promedio, montoDesZ, montoDom_A, montoDom_B, monto8, monto100, montoDom_8  Como Real;
	
	
	Escribir "Ingrese número de zona";
	Leer zona;
	
	Mientras zona<>0 Hacer
		ant=zona;
			
		si zona=ant Entonces
			
				domTotalZ=0;
				des100Z=0;
				des8Z=0;
				recaudacionZ=0;
				totalMontoDes100Z=0;
				totalMontoDes8Z=0;
				montoDes100Z=0;
				montoDes8Z=0;
				montoDom_A=0;
				montoDom_B=0;
				monto100=0;
				monto8=0;
				montoDom_8=0;
				//totalZonas=0;
				//recaudacion=0;
				
				Repetir
					
					Escribir "Ingrese número de domicilio de zona ", ant;
					Leer dom;
					Escribir "Ingrese número de Identificador de medidor del domicilio";
					Leer IM;
					Escribir "Ingrese metros cubicos consumidos del mes actual en el domicilio";
					Leer M3act;
					Escribir "Ingrese metros cubicos consumidos del mes anterior en el domicilio";
					Leer M3ant;
					M3sum=M3act-M3ant;
					M3valor=58.10;
					montoDom=M3sum*M3valor;
					//calculo de ultimo digito de ID y aplicación de descuentos.
					digito=IM mod 10;
					
					Segun digito Hacer
						4:
							montoDom_A=montoDom-montoDom*0;
							montoDes100Z=montoDom-montoDom_A;
							des100Z=des100Z+1;
							totalMontoDes100Z=totalMontoDes100Z+montoDom;
							Escribir "I.M: " ,IM ,". Valor del metro cúbico: $",M3valor,". Metros cúbicos suministrados: ",M3sum ,". El monto por suministro del domicilio ", dom, " Zona ", zona," es : $", montoDom, ". Monto en consepto de descuento: $",montoDes100Z, ". Descuento aplicado: 100%.";
						9:
							montoDom_A=montoDom-montoDom*0;
							montoDes100Z=montoDom-montoDom_A;
							des100Z=des100Z+1;
							totalMontoDes100Z=totalMontoDes100Z+montoDom;
							monto100=monto100+montoDes100Z;
							Escribir "I.M: " ,IM ,". Valor del metro cúbico: $",M3valor,". Metros cúbicos suministrados: ",M3sum ,". El monto por suministro del domicilio ", dom, " Zona ", zona," es : $", montoDom, ". Monto en consepto de descuento: $",montoDes100Z, ". Descuento aplicado: 100%. ";
						5:
							montoDom_8=montoDom*8/100;
							montoDes8Z=montoDom-montoDom_8;
							des8Z=des8Z+1;
							totalMontoDes8Z=totalMontoDes8Z+montoDom_8;
							monto8=monto8+montoDes8Z;
							Escribir "I.M: " ,IM ,". Valor del metro cúbico: $",M3valor,". Metros cúbicos suministrados: ",M3sum ,". El monto por suministro del domicilio ", dom, " Zona ", zona," es : $", montoDom, ". Monto en consepto de descuento: $",montoDes8Z,  ". Descuento aplicado: 8%.";
							
						De Otro Modo:
							montoDom_B=montoDom_B+montoDom;
							Escribir "I.M: " ,IM ,". Valor del metro cúbico: $",M3valor,". Metros cúbicos suministrados: ",M3sum ,". El monto por suministro del domicilio ", dom, " Zona ", zona," es : $", montoDom_B, ". Sin descuento aplicado.";
							
					FinSegun
					
					domTotalZ=domTotalZ+1;
					recaudacionZ=monto8+montoDom_B;
					//totalZonas=totalZonas+1;
					
					Escribir "Ingrese número de zona";
					Leer zona;
					
				Hasta Que ant<>zona
				
			Escribir "Cantidad de domicilios procesados en zona ", ant , " es de: ", domTotalZ, ". La cantidad de descuentos al 100% es de: ",des100Z, ". El total en descuentos al 100% es de: $",totalMontoDes100Z, ". La cantidad de descuentos al 8% es de: ",des8Z,". El total en descuentos al 8% es de: $",totalMontoDes8Z, ". La recaudación de zona ", ant , " es de: ", recaudacionZ ;
		
		FinSi
	FinMientras

//Escribir "Total de zonas : " ,totalZonas;
//Escribir "Total de recaudación general: $" ,recaudacion;
	
FinAlgoritmo
