//
//  VillainsRepository.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 09/12/2020.
//

import Foundation

class VillainsRepository{
    
    let villainsSamples = [Villains(name: "Dormammu",
                                    image: "img_villain_dormammu",
                                    description: "Dormammu es un personaje que aparece en historietas publicadas por Marvel Cómics. El personaje apareció por primera vez en Strange Tales Vol 1 164 (noviembre del año 1964), y fue creado por Stan Lee y Steve Ditko. Es un supervillano de los comics de Strange Tales siendo el archienemigo definitivo de Dr. Strange. Es un ser místico que vive en las profundidades de un mundo de las pesadillas de otra dimensión. Se trata de un ser super poderoso que enfrenta frecuentemente al actual Hechicero Máximo, Dr. Strange. Tiene la cabeza flamejante y roja. Sus dones místicos hacen que sea un digno rival de Strange.",
                                    nickName: "FaceFlame"),
                                 Villains(name: "Ego",
                                    image: "img_villain_ego",
                                    description: "Ego era un antiguo enemigo de Galactus. En algún momento del pasado Galactus se enfrentaron pero los dos seres estaban al mismo nivel y Galactus le puso turbinas y lo mando muy lejos. Tiempo después, Thor se entero de que Ego quería destruir la Tierra. Thor busco y encontró a Ego y a pesar de ser un dios no fue capaz de vencer a un planeta viviente y termino derrotado y fue rescatado por los Fantastic Four. Thor les contó lo que paso y junto con los FF aterrizaron en Ego. Susan Storm y Johnny Storm se quedaron en Ego mientras que Reed Richards y Thor fueron a buscar a Galactus para que les ayudara a derrotar al planeta viviente. Ellos lo encontraron y Galactus acepto ayudarlos.",
                                    nickName: "Planetita"),
                                 Villains(name: "Hela",
                                    image: "img_villain_hela",
                                    description: "Hela era la gobernante de Niffleheim, la tierra de los difuntos. El Cap America fue teletransportado al reino de Hela y ella trato de convencerlo a que se quede. Hela sabia los malignos planes de su padre Loki pero ella conocía bien a su engañador padre y sabia que su padre la iba a traicionar. Hela negocio con el Cap y lo teletransporto a Asgard para ayudar a sus amigos con la condición de que si él caía en la pelea entonces su alma le pertenecería a ella por siempre.",
                                    nickName: "Deer Stag"),
                                 Villains(name: "Ivan Vanko",
                                    image: "img_villain_ivan_vanko",
                                    description: "Ivan Vanko (ruso: Иван Антонович Ванко) es el hijo del físico ruso Anton Vanko, que había ayudado a Howard Stark diseñar el reactor Arc, pero fue posteriormente deportado de Estados Unidos, cuando se hizo evidente que él estaba trabajando por la ambición de conseguir más y más dinero y ningún reparo en que tuviera beneficio para la humanidad. Anton Vanko cayó en el alcoholismo y procedió a abusar de su hijo durante muchos años. En algún momento fue sorprendido vendiendo plutonio Soviético a Pakistán y cumplió 15 años de condena. Con el transcurso de los años, Ivan se convirtió en alguien sumamente dotado en los campos de las ciencias físicas y mecánicas, mientras que adoptó el odio de su padre por la familia Stark. Después de que su padre murió en la miseria, Vanko juró vengarse de él y construyó un exoesqueleto, impulsado por un reactor Arc en miniatura, para usar en contra de Tony Stark en un esfuerzo para desacreditarlo y así cumplir la venganza de su padre. Vanko atacó a Stark durante el Grand Prix de Mónaco, con su arnés de Whiplash para destruir varios coches en la carrera, pero Stark finalmente lo derrotó usando un traje  portátil de Iron Man, y Vanko fue enviado a prisión. Durante su detención se le preguntó por Tony, ¿por qué no mejor vender su tecnología para hacer dinero? Vanko respondió que quería demostrarle a la gente que Iron Man podría ser derrotado. Ivan también dedujo que Tony estaba siendo envenenado por el paladio reactor Arc, Palladium en el pecho, es una forma dolorosa de morir.",
                                    nickName: "Latigos"),
                                 Villains(name: "Johann Schmidt",
                                    image: "img_villain_johann_schmidt",
                                    description: "El Red Skull Johann Schmidt era un ex general oficial nazi y confidente de Adolf Hitler. Ha estado íntimamente afiliado con HYDRA y es enemigo de S.H.I.E.L.D., Los Vengadores, y otros intereses de los Estados Unidos y el mundo en general. Fue físicamente aumentado en tamaño al tener la mente situada en el cuerpo de un clon del Capitán América, el pináculo de la perfección humana. Ha sido presunto muerto en el pasado, sólo para regresar el tiempo una y otra vez para plagar el mundo con esquemas de dominación global y genocidio.",
                                    nickName: "Red Skull"),
                                 Villains(name: "Malekith",
                                    image: "img_villain_malekith",
                                    description: "En algún momento del pasado cuando Odin descansaba, Malekith con sus tropas ataco Asgard pero fue vencido por Thor.Loki lo libero del reino de los muertos a cambió que le consiguiera el Cofre de los antiguos Inviernos. Disfrazado fue con hombres a una cueva en Noruega y allí los hombres escaparon y el último fue congelado cuando abrió el cofre. Se apodero del cofre y Amora acompañada de Skurge fue a vigilarlo. Ella le pidió ver el cofre y el la traiciono congelando y a Skurge.",
                                    nickName: "Orejotas"),
                                 Villains(name: "ronan",
                                    image: "img_villain_ronan",
                                    description: "Ronan el Acusador nació en una de las familias aristocráticas que lideraban la población de los Kree en el planeta Hala. Después de completar su educación fue aceptado en las filas de los Acusadores Públicos, en el que de forma rápida ascendió de rango. De forma eventual fue promovido por la Inteligencia Suprema con el cargo de Acusador Público Supremo.Una de las misiones de Ronan fue castigar a los Cuatro Fantásticos cuando derrotaron a un Centinela Kree que permanecía en la Tierra. Pero pronto se vio forzado a usar su propia arma sobre sí mismo, aplicándose la misma sentencia que intentaba infligirles a ellos. Incapaz de buscar venganza debido a las órdenes del Supremor, Ronan se unió con el Ministro Imperial Zarek para despojar al Supremor pero fue derrotado por los Vengadores.",
                                    nickName: "LagrimasNegras"),
                                 Villains(name: "Thanos",
                                    image: "img_villain_thanos",
                                    description: "Thanos fue miembro de una poderosa raza llamado los Titanes. Thanos masacro a mucha de su gente en su búsqueda de conquistar. Más tarde masacraría a la gente de Gamora, Nebula y Korath a quienes adopto como hijos. En algún momento, él entreno a sus hijos para que sean asesinos profesionales. Thanos también se alió con Ronan the Accuser para que Ronan le consiga las Gemas del Infinito, también el emperador J'son prometió darle la semilla cósmica a cambio de que destruyese todo Asgard.",
                                    nickName: "CalvoCabrón"),
                                 Villains(name: "Ultron",
                                    image: "img_villain_ultron",
                                    description: "Ultron es un robot con inteligencia artificial creado por el Doctor Pym para ser su asistente de laboratorio.Ultron apareció por primera vez cuando el Doctor Pym le pide a los Avengers que los ayude a analizar la Esfera dimensional, y crear un dispositivo para aprovechar el poder de la esfera para abrir un portal a la Dimensión Oscura en donde el Doctor Akatsuki y Loki están atrapados. Al principio, Ultron tiene una personalidad bastante simple, y se vio que estaba está programado para ayudar a la humanidad. Él ayudo a Pym en la creación del dispositivo Dimension Gate.",
                                    nickName: "Chatarra")
                                 
                 ]
}
