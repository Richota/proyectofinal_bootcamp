# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ comuna: 'Star Wars' }, { comuna: 'Lord of the Rings' }])
#   Character.create(comuna: 'Luke', movie: movies.first)
Region.destroy_all
Commune.destroy_all

xv   = Region.create(short_name: 'XV Región', nombre: 'Arica y Parinacota', ordinal: 'XV')
i    = Region.create(short_name: 'I Región', nombre: 'Tarapacá', ordinal: 'I')
ii   = Region.create(short_name: 'II Región', nombre: 'Antofagasta', ordinal: 'II')
iii  = Region.create(short_name: 'III Región', nombre: 'Atacama', ordinal: 'III')
iv   = Region.create(short_name: 'IV Región', nombre: 'Coquimbo', ordinal: 'IV')
v    = Region.create(short_name: 'V Región', nombre: 'Valparaíso', ordinal: 'V')
rm   = Region.create(short_name: 'Región Metropolitana', nombre: 'Metropolitana de Santiago', ordinal: 'RM')
vi   = Region.create(short_name: 'VI Región',  nombre: 'Libertador General Bernardo O\'Higgins', ordinal: 'VI')
vii  = Region.create(short_name: 'VII Región', nombre: 'Maule', ordinal: 'VI')
viii = Region.create(short_name: 'VIII Región', nombre: 'Biobío', ordinal: 'VI')
ix   = Region.create(short_name: 'IX Región', nombre: 'La Araucanía', ordinal: 'IX')
xiv  = Region.create(short_name: 'XIV Región', nombre: 'Los Ríos', ordinal: 'XI')
x    = Region.create(short_name: 'X Región', nombre: 'Los Lagos', ordinal: 'X')
xi   = Region.create(short_name: 'XI Región', nombre: 'Aisén del General Carlos Ibáñez del Campo', ordinal: 'XI')
xii  = Region.create(short_name: 'XII Región', nombre: 'Magallanes y de la Antártica Chilena', ordinal: 'XII')

Commune.create(comuna: 'Arica', region_id: xv.id)
Commune.create(comuna: 'Camarones', region_id: xv.id)
Commune.create(comuna: 'Putre', region_id: xv.id)
Commune.create(comuna: 'General Lagos', region_id: xv.id)
Commune.create(comuna: 'Iquique', region_id: i)
Commune.create(comuna: 'Alto Hospicio', region_id: i.id)
Commune.create(comuna: 'Pozo Almonte', region_id: i.id)
Commune.create(comuna: 'Camiña',      region_id: i.id)
Commune.create(comuna: 'Colchane',    region_id: i.id)
Commune.create(comuna: 'Huara',       region_id: i.id)
Commune.create(comuna: 'Pica',        region_id: i.id)
Commune.create(comuna: 'Antofagasta', region_id: ii)
Commune.create(comuna: 'Mejillones',  region_id: ii)
Commune.create(comuna: 'Sierra Gorda',         region_id: ii.id)
Commune.create(comuna: 'Taltal',               region_id: ii.id)
Commune.create(comuna: 'Calama',               region_id: ii.id)
Commune.create(comuna: 'Ollagüe',              region_id: ii.id)
Commune.create(comuna: 'San Pedro de Atacama', region_id: ii.id)
Commune.create(comuna: 'Tocopilla',            region_id: ii.id)
Commune.create(comuna: 'María Elena',          region_id: ii.id)
Commune.create(comuna: 'Copiapó',              region_id: iii.id)
Commune.create(comuna: 'Caldera',              region_id: iii.id)
Commune.create(comuna: 'Tierra Amarilla',      region_id: iii.id)
Commune.create(comuna: 'Chañaral',             region_id: iii.id)
Commune.create(comuna: 'Diego de Almagro',     region_id: iii.id)
Commune.create(comuna: 'Vallenar',             region_id: iii.id)
Commune.create(comuna: 'Alto del Carmen',      region_id: iii.id)
Commune.create(comuna: 'Freirina',             region_id: iii.id)
Commune.create(comuna: 'Huasco',               region_id: iii.id)
Commune.create(comuna: 'La Serena',            region_id: iv.id)
Commune.create(comuna: 'Coquimbo',             region_id: iv.id)
Commune.create(comuna: 'Andacollo',            region_id: iv.id)
Commune.create(comuna: 'La Higuera',           region_id: iv.id)
Commune.create(comuna: 'Paiguano',             region_id: iv.id)
Commune.create(comuna: 'Vicuña',               region_id: iv.id)
Commune.create(comuna: 'Illapel',              region_id: iv.id)
Commune.create(comuna: 'Canela',               region_id: iv.id)
Commune.create(comuna: 'Los Vilos',            region_id: iv.id)
Commune.create(comuna: 'Salamanca',            region_id: iv.id)
Commune.create(comuna: 'Ovalle',               region_id: iv.id)
Commune.create(comuna: 'Combarbalá',           region_id: iv.id)
Commune.create(comuna: 'Monte Patria',         region_id: iv.id)
Commune.create(comuna: 'Punitaqui',            region_id: iv.id)
Commune.create(comuna: 'Río Hurtado',          region_id: iv.id)
Commune.create(comuna: 'Valparaíso',           region_id: v.id)
Commune.create(comuna: 'Casablanca',           region_id: v.id)
Commune.create(comuna: 'Concón',               region_id: v.id)
Commune.create(comuna: 'Juan Fernández',       region_id: v.id)
Commune.create(comuna: 'Puchuncaví',           region_id: v.id)
Commune.create(comuna: 'Quintero',             region_id: v.id)
Commune.create(comuna: 'Viña del Mar',         region_id: v.id)
Commune.create(comuna: 'Isla de Pascua',       region_id: v.id)
Commune.create(comuna: 'Los Andes',            region_id: v.id)
Commune.create(comuna: 'Calle Larga',          region_id: v.id)
Commune.create(comuna: 'Rinconada',            region_id: v.id)
Commune.create(comuna: 'San Esteban',          region_id: v.id)
Commune.create(comuna: 'La Ligua',             region_id: v.id)
Commune.create(comuna: 'Cabildo',              region_id: v.id)
Commune.create(comuna: 'Papudo',               region_id: v.id)
Commune.create(comuna: 'Petorca',              region_id: v.id)
Commune.create(comuna: 'Zapallar',             region_id: v.id)
Commune.create(comuna: 'Quillota',             region_id: v.id)
Commune.create(comuna: 'Calera',               region_id: v.id)
Commune.create(comuna: 'Hijuelas',             region_id: v.id)
Commune.create(comuna: 'La Cruz',              region_id: v.id)
Commune.create(comuna: 'Nogales',              region_id: v.id)
Commune.create(comuna: 'San Antonio',          region_id: v.id)
Commune.create(comuna: 'Algarrobo',            region_id: v.id)
Commune.create(comuna: 'Cartagena',            region_id: v.id)
Commune.create(comuna: 'El Quisco',            region_id: v.id)
Commune.create(comuna: 'El Tabo',              region_id: v.id)
Commune.create(comuna: 'Santo Domingo',        region_id: v.id)
Commune.create(comuna: 'San Felipe',           region_id: v.id)
Commune.create(comuna: 'Catemu',               region_id: v.id)
Commune.create(comuna: 'Llaillay',             region_id: v.id)
Commune.create(comuna: 'Panquehue',            region_id: v.id)
Commune.create(comuna: 'Putaendo',             region_id: v.id)
Commune.create(comuna: 'Santa María',          region_id: v.id)
Commune.create(comuna: 'Limache',              region_id: v.id)
Commune.create(comuna: 'Quilpué',              region_id: v.id)
Commune.create(comuna: 'Villa Alemana',        region_id: v.id)
Commune.create(comuna: 'Olmué',                region_id: v.id)
Commune.create(comuna: 'Rancagua',             region_id: vi.id)
Commune.create(comuna: 'Codegua',              region_id: vi.id)
Commune.create(comuna: 'Coinco',               region_id: vi.id)
Commune.create(comuna: 'Coltauco',             region_id: vi.id)
Commune.create(comuna: 'Doñihue',              region_id: vi.id)
Commune.create(comuna: 'Graneros',             region_id: vi.id)
Commune.create(comuna: 'Las Cabras',           region_id: vi.id)
Commune.create(comuna: 'Machalí',              region_id: vi.id)
Commune.create(comuna: 'Malloa',               region_id: vi.id)
Commune.create(comuna: 'Mostazal',             region_id: vi.id)
Commune.create(comuna: 'Olivar',               region_id: vi.id)
Commune.create(comuna: 'Peumo',                region_id: vi.id)
Commune.create(comuna: 'Pichidegua',           region_id: vi.id)
Commune.create(comuna: 'Quinta de Tilcoco',    region_id: vi.id)
Commune.create(comuna: 'Rengo',                region_id: vi.id)
Commune.create(comuna: 'Requínoa',             region_id: vi.id)
Commune.create(comuna: 'San Vicente',          region_id: vi.id)
Commune.create(comuna: 'Pichilemu',            region_id: vi.id)
Commune.create(comuna: 'La Estrella',          region_id: vi.id)
Commune.create(comuna: 'Litueche',             region_id: vi.id)
Commune.create(comuna: 'Marchihue',            region_id: vi.id)
Commune.create(comuna: 'Navidad',              region_id: vi.id)
Commune.create(comuna: 'Paredones',            region_id: vi.id)
Commune.create(comuna: 'San Fernando',         region_id: vi.id)
Commune.create(comuna: 'Chépica',              region_id: vi.id)
Commune.create(comuna: 'Chimbarongo',          region_id: vi.id)
Commune.create(comuna: 'Lolol',                region_id: vi.id)
Commune.create(comuna: 'Nancagua',             region_id: vi.id)
Commune.create(comuna: 'Palmilla',             region_id: vi.id)
Commune.create(comuna: 'Peralillo',            region_id: vi.id)
Commune.create(comuna: 'Placilla',             region_id: vi.id)
Commune.create(comuna: 'Pumanque',             region_id: vi.id)
Commune.create(comuna: 'Santa Cruz',           region_id: vi.id)
Commune.create(comuna: 'Talca',                region_id: vii.id)
Commune.create(comuna: 'Constitución',         region_id: vii.id)
Commune.create(comuna: 'Curepto',              region_id: vii.id)
Commune.create(comuna: 'Empedrado',            region_id: vii.id)
Commune.create(comuna: 'Maule',                region_id: vii.id)
Commune.create(comuna: 'Pelarco',              region_id: vii.id)
Commune.create(comuna: 'Pencahue',             region_id: vii.id)
Commune.create(comuna: 'Río Claro',            region_id: vii.id)
Commune.create(comuna: 'San Clemente',         region_id: vii.id)
Commune.create(comuna: 'San Rafael',           region_id: vii.id)
Commune.create(comuna: 'Cauquenes',            region_id: vii.id)
Commune.create(comuna: 'Chanco',               region_id: vii.id)
Commune.create(comuna: 'Pelluhue',             region_id: vii.id)
Commune.create(comuna: 'Curicó',               region_id: vii.id)
Commune.create(comuna: 'Hualañé',              region_id: vii.id)
Commune.create(comuna: 'Licantén',             region_id: vii.id)
Commune.create(comuna: 'Molina',               region_id: vii.id)
Commune.create(comuna: 'Rauco',                region_id: vii.id)
Commune.create(comuna: 'Romeral',              region_id: vii.id)
Commune.create(comuna: 'Sagrada Familia',      region_id: vii.id)
Commune.create(comuna: 'Teno',                 region_id: vii.id)
Commune.create(comuna: 'Vichuquén',            region_id: vii.id)
Commune.create(comuna: 'Linares',              region_id: vii.id)
Commune.create(comuna: 'Colbún',               region_id: vii.id)
Commune.create(comuna: 'Longaví',              region_id: vii.id)
Commune.create(comuna: 'Parral',               region_id: vii.id)
Commune.create(comuna: 'Retiro',               region_id: vii.id)
Commune.create(comuna: 'San Javier',           region_id: vii.id)
Commune.create(comuna: 'Villa Alegre',         region_id: vii.id)
Commune.create(comuna: 'Yerbas Buenas',        region_id: vii.id)
Commune.create(comuna: 'Concepción',           region_id: viii.id)
Commune.create(comuna: 'Coronel',              region_id: viii.id)
Commune.create(comuna: 'Chiguayante',          region_id: viii.id)
Commune.create(comuna: 'Florida',              region_id: viii.id)
Commune.create(comuna: 'Hualqui',              region_id: viii.id)
Commune.create(comuna: 'Lota',                 region_id: viii.id)
Commune.create(comuna: 'Penco',                region_id: viii.id)
Commune.create(comuna: 'San Pedro de la Paz',  region_id: viii.id)
Commune.create(comuna: 'Santa Juana',          region_id: viii.id)
Commune.create(comuna: 'Talcahuano',           region_id: viii.id)
Commune.create(comuna: 'Tomé',                 region_id: viii.id)
Commune.create(comuna: 'Hualpén',              region_id: viii.id)
Commune.create(comuna: 'Lebu',                 region_id: viii.id)
Commune.create(comuna: 'Arauco',               region_id: viii.id)
Commune.create(comuna: 'Cañete',               region_id: viii.id)
Commune.create(comuna: 'Contulmo',             region_id: viii.id)
Commune.create(comuna: 'Curanilahue',          region_id: viii.id)
Commune.create(comuna: 'Los Alamos',           region_id: viii.id)
Commune.create(comuna: 'Tirúa',                region_id: viii.id)
Commune.create(comuna: 'Los Angeles',          region_id: viii.id)
Commune.create(comuna: 'Antuco',               region_id: viii.id)
Commune.create(comuna: 'Cabrero',              region_id: viii.id)
Commune.create(comuna: 'Laja',                 region_id: viii.id)
Commune.create(comuna: 'Mulchén',              region_id: viii.id)
Commune.create(comuna: 'Nacimiento',           region_id: viii.id)
Commune.create(comuna: 'Negrete',              region_id: viii.id)
Commune.create(comuna: 'Quilaco',              region_id: viii.id)
Commune.create(comuna: 'Quilleco',             region_id: viii.id)
Commune.create(comuna: 'San Rosendo',          region_id: viii.id)
Commune.create(comuna: 'Santa Bárbara',        region_id: viii.id)
Commune.create(comuna: 'Tucapel',              region_id: viii.id)
Commune.create(comuna: 'Yumbel',               region_id: viii.id)
Commune.create(comuna: 'Alto Biobío',          region_id: viii.id)
Commune.create(comuna: 'Chillán',              region_id: viii.id)
Commune.create(comuna: 'Bulnes',               region_id: viii.id)
Commune.create(comuna: 'Cobquecura',           region_id: viii.id)
Commune.create(comuna: 'Coelemu',              region_id: viii.id)
Commune.create(comuna: 'Coihueco',             region_id: viii.id)
Commune.create(comuna: 'Chillán Viejo',        region_id: viii.id)
Commune.create(comuna: 'El Carmen',            region_id: viii.id)
Commune.create(comuna: 'Ninhue',               region_id: viii.id)
Commune.create(comuna: 'Ñiquén',               region_id: viii.id)
Commune.create(comuna: 'Pemuco',               region_id: viii.id)
Commune.create(comuna: 'Pinto',                region_id: viii.id)
Commune.create(comuna: 'Portezuelo',           region_id: viii.id)
Commune.create(comuna: 'Quillón',              region_id: viii.id)
Commune.create(comuna: 'Quirihue',             region_id: viii.id)
Commune.create(comuna: 'Ránquil',              region_id: viii.id)
Commune.create(comuna: 'San Carlos',           region_id: viii.id)
Commune.create(comuna: 'San Fabián',           region_id: viii.id)
Commune.create(comuna: 'San Ignacio',          region_id: viii.id)
Commune.create(comuna: 'San Nicolás',          region_id: viii.id)
Commune.create(comuna: 'Treguaco',             region_id: viii.id)
Commune.create(comuna: 'Yungay',               region_id: viii.id)
Commune.create(comuna: 'Temuco',               region_id: ix.id)
Commune.create(comuna: 'Carahue',              region_id: ix.id)
Commune.create(comuna: 'Cunco',                region_id: ix.id)
Commune.create(comuna: 'Curarrehue',           region_id: ix.id)
Commune.create(comuna: 'Freire',               region_id: ix.id)
Commune.create(comuna: 'Galvarino',            region_id: ix.id)
Commune.create(comuna: 'Gorbea',               region_id: ix.id)
Commune.create(comuna: 'Lautaro',              region_id: ix.id)
Commune.create(comuna: 'Loncoche',             region_id: ix.id)
Commune.create(comuna: 'Melipeuco',            region_id: ix.id)
Commune.create(comuna: 'Nueva Imperial',       region_id: ix.id)
Commune.create(comuna: 'Padre Las Casas',      region_id: ix.id)
Commune.create(comuna: 'Perquenco',            region_id: ix.id)
Commune.create(comuna: 'Pitrufquén',           region_id: ix.id)
Commune.create(comuna: 'Pucón',                region_id: ix.id)
Commune.create(comuna: 'Saavedra',             region_id: ix.id)
Commune.create(comuna: 'Teodoro Schmidt',      region_id: ix.id)
Commune.create(comuna: 'Toltén',               region_id: ix.id)
Commune.create(comuna: 'Vilcún',               region_id: ix.id)
Commune.create(comuna: 'Villarrica',           region_id: ix.id)
Commune.create(comuna: 'Cholchol',             region_id: ix.id)
Commune.create(comuna: 'Angol',                region_id: ix.id)
Commune.create(comuna: 'Collipulli',           region_id: ix.id)
Commune.create(comuna: 'Curacautín',           region_id: ix.id)
Commune.create(comuna: 'Ercilla',              region_id: ix.id)
Commune.create(comuna: 'Lonquimay',            region_id: ix.id)
Commune.create(comuna: 'Los Sauces',           region_id: ix.id)
Commune.create(comuna: 'Lumaco',               region_id: ix.id)
Commune.create(comuna: 'Purén',                region_id: ix.id)
Commune.create(comuna: 'Renaico',              region_id: ix.id)
Commune.create(comuna: 'Traiguén',             region_id: ix.id)
Commune.create(comuna: 'Victoria',             region_id: ix.id)
Commune.create(comuna: 'Valdivia',             region_id: xiv.id)
Commune.create(comuna: 'Corral',               region_id: xiv.id)
Commune.create(comuna: 'Lanco',                region_id: xiv.id)
Commune.create(comuna: 'Los Lagos',            region_id: xiv.id)
Commune.create(comuna: 'Máfil',                region_id: xiv.id)
Commune.create(comuna: 'Mariquina',            region_id: xiv.id)
Commune.create(comuna: 'Paillaco',             region_id: xiv.id)
Commune.create(comuna: 'Panguipulli',          region_id: xiv.id)
Commune.create(comuna: 'La Unión',             region_id: xiv.id)
Commune.create(comuna: 'Futrono',              region_id: xiv.id)
Commune.create(comuna: 'Lago Ranco',           region_id: xiv.id)
Commune.create(comuna: 'Río Bueno',            region_id: xiv.id)
Commune.create(comuna: 'Puerto Montt',         region_id: x.id)
Commune.create(comuna: 'Calbuco',              region_id: x.id)
Commune.create(comuna: 'Cochamó',              region_id: x.id)
Commune.create(comuna: 'Fresia',               region_id: x.id)
Commune.create(comuna: 'Frutillar',            region_id: x.id)
Commune.create(comuna: 'Los Muermos',          region_id: x.id)
Commune.create(comuna: 'Llanquihue',           region_id: x.id)
Commune.create(comuna: 'Maullín',              region_id: x.id)
Commune.create(comuna: 'Puerto Varas',         region_id: x.id)
Commune.create(comuna: 'Castro',               region_id: x.id)
Commune.create(comuna: 'Ancud',                region_id: x.id)
Commune.create(comuna: 'Chonchi',              region_id: x.id)
Commune.create(comuna: 'Curaco de Vélez',      region_id: x.id)
Commune.create(comuna: 'Dalcahue',             region_id: x.id)
Commune.create(comuna: 'Puqueldón',            region_id: x.id)
Commune.create(comuna: 'Queilén',              region_id: x.id)
Commune.create(comuna: 'Quellón',              region_id: x.id)
Commune.create(comuna: 'Quemchi',              region_id: x.id)
Commune.create(comuna: 'Quinchao',             region_id: x.id)
Commune.create(comuna: 'Osorno',               region_id: x.id)
Commune.create(comuna: 'Puerto Octay',         region_id: x.id)
Commune.create(comuna: 'Purranque',            region_id: x.id)
Commune.create(comuna: 'Puyehue',              region_id: x.id)
Commune.create(comuna: 'Río Negro',            region_id: x.id)
Commune.create(comuna: 'San Juan de la Costa', region_id: x.id)
Commune.create(comuna: 'San Pablo',            region_id: x.id)
Commune.create(comuna: 'Chaitén',              region_id: x.id)
Commune.create(comuna: 'Futaleufú',            region_id: x.id)
Commune.create(comuna: 'Hualaihué',            region_id: x.id)
Commune.create(comuna: 'Palena',               region_id: x.id)
Commune.create(comuna: 'Coihaique',            region_id: xi.id)
Commune.create(comuna: 'Lago Verde',           region_id: xi.id)
Commune.create(comuna: 'Aisén',                region_id: xi.id)
Commune.create(comuna: 'Cisnes',               region_id: xi.id)
Commune.create(comuna: 'Guaitecas',            region_id: xi.id)
Commune.create(comuna: 'Cochrane',             region_id: xi.id)
Commune.create(comuna: 'O\'Higgins',           region_id: xi.id)
Commune.create(comuna: 'Tortel',               region_id: xi.id)
Commune.create(comuna: 'Chile Chico',          region_id: xi.id)
Commune.create(comuna: 'Río Ibáñez',           region_id: xi.id)
Commune.create(comuna: 'Punta Arenas',         region_id: xii.id)
Commune.create(comuna: 'Laguna Blanca',        region_id: xii.id)
Commune.create(comuna: 'Río Verde',            region_id: xii.id)
Commune.create(comuna: 'San Gregorio',         region_id: xii.id)
Commune.create(comuna: 'Cabo de Hornos',       region_id: xii.id)
Commune.create(comuna: 'Antártica',            region_id: xii.id)
Commune.create(comuna: 'Porvenir',             region_id: xii.id)
Commune.create(comuna: 'Primavera',            region_id: xii.id)
Commune.create(comuna: 'Timaukel',             region_id: xii.id)
Commune.create(comuna: 'Natales',              region_id: xii.id)
Commune.create(comuna: 'Torres del Paine',     region_id: xii.id)
Commune.create(comuna: 'Colina',               region_id: rm.id)
Commune.create(comuna: 'Lampa',                region_id: rm.id)
Commune.create(comuna: 'Tiltil',               region_id: rm.id)
Commune.create(comuna: 'Pirque',               region_id: rm.id)
Commune.create(comuna: 'Puente Alto',          region_id: rm.id)
Commune.create(comuna: 'San José de Maipo',    region_id: rm.id)
Commune.create(comuna: 'Buin',                 region_id: rm.id)
Commune.create(comuna: 'Calera de Tango',      region_id: rm.id)
Commune.create(comuna: 'Paine',                region_id: rm.id)
Commune.create(comuna: 'San Bernardo',         region_id: rm.id)
Commune.create(comuna: 'Alhué',                region_id: rm.id)
Commune.create(comuna: 'Curacaví',             region_id: rm.id)
Commune.create(comuna: 'María Pinto',          region_id: rm.id)
Commune.create(comuna: 'Melipilla',            region_id: rm.id)
Commune.create(comuna: 'San Pedro',            region_id: rm.id)
Commune.create(comuna: 'Cerrillos',            region_id: rm.id)
Commune.create(comuna: 'Cerro Navia',          region_id: rm.id)
Commune.create(comuna: 'Conchalí',             region_id: rm.id)
Commune.create(comuna: 'El Bosque',            region_id: rm.id)
Commune.create(comuna: 'Estación Central',     region_id: rm.id)
Commune.create(comuna: 'Huechuraba',           region_id: rm.id)
Commune.create(comuna: 'Independencia',        region_id: rm.id)
Commune.create(comuna: 'La Cisterna',          region_id: rm.id)
Commune.create(comuna: 'La Granja',            region_id: rm.id)
Commune.create(comuna: 'La Florida',           region_id: rm.id)
Commune.create(comuna: 'La Pintana',           region_id: rm.id)
Commune.create(comuna: 'La Reina',             region_id: rm.id)
Commune.create(comuna: 'Las Condes',           region_id: rm.id)
Commune.create(comuna: 'Lo Barnechea',         region_id: rm.id)
Commune.create(comuna: 'Lo Espejo',            region_id: rm.id)
Commune.create(comuna: 'Lo Prado',             region_id: rm.id)
Commune.create(comuna: 'Macul',                region_id: rm.id)
Commune.create(comuna: 'Maipú',                region_id: rm.id)
Commune.create(comuna: 'Ñuñoa',                region_id: rm.id)
Commune.create(comuna: 'Pedro Aguirre Cerda',  region_id: rm.id)
Commune.create(comuna: 'Peñalolén', region_id: rm.id)
Commune.create(comuna: 'Providencia', region_id: rm.id)
Commune.create(comuna: 'Pudahuel',             region_id: rm.id)
Commune.create(comuna: 'Quilicura',            region_id: rm.id)
Commune.create(comuna: 'Quinta Normal',        region_id: rm.id)
Commune.create(comuna: 'Recoleta',             region_id: rm.id)
Commune.create(comuna: 'Renca',                region_id: rm.id)
Commune.create(comuna: 'San Miguel',           region_id: rm.id)
Commune.create(comuna: 'San Joaquín',          region_id: rm.id)
Commune.create(comuna: 'San Ramón',            region_id: rm.id)
Commune.create(comuna: 'Santiago',             region_id: rm.id)
Commune.create(comuna: 'Vitacura',             region_id: rm.id)
Commune.create(comuna: 'El Monte',             region_id: rm.id)
Commune.create(comuna: 'Isla de Maipo',        region_id: rm.id)
Commune.create(comuna: 'Padre Hurtado',        region_id: rm.id)
Commune.create(comuna: 'Peñaflor',             region_id: rm.id)
Commune.create(comuna: 'Talagante', region_id: rm.id)

# Artículo 71.- Medidas cautelares especiales.
# a) Su entrega inmediata a los padres o a quienes
# tengan legalmente su cuidado;
#      b) Confiarlo al cuidado de una persona o familia en
# casos de urgencia. El juez preferirá, para que asuman
# provisoriamente el cuidado, a sus parientes
# consanguíneos o a otras personas con las que tenga
# relación de confianza;
#      c) El ingreso a un programa de familias de
# acogida o centro de diagnóstico o residencia, por el
# tiempo que sea estrictamente indispensable. En este
# caso, de adoptarse la medida sin la comparecencia del
# niño, niña o adolescente ante el juez, deberá
# asegurarse que ésta se verifique a primera hora de la
# audiencia más próxima;
#      d) Disponer la concurrencia de niños, niñas o
# adolescentes, sus padres, o las personas que los tengan
# bajo su cuidado, a programas o acciones de apoyo,
# reparación u orientación, para enfrentar y superar las
# situaciones de crisis en que pudieren encontrarse, e
# impartir las instrucciones pertinentes;
#      e) Suspender el derecho de una o más personas
# determinadas a mantener relaciones directas o regulares
# con el niño, niña o adolescente, ya sea que éstas hayan
# sido establecidas por resolución judicial o no lo hayan
# sido;
#      f) Prohibir o limitar la presencia del ofensor en
# el hogar común;
#      g) Prohibir o limitar la concurrencia del
# ofensor al lugar de estudio del niño, niña o
# adolescente, así como a cualquier otro lugar donde
# éste o ésta permanezca, visite o concurra
# habitualmente. En caso de que concurran al mismo
# establecimiento, el juez adoptará medidas específicas
# tendientes a resguardar los derechos de aquéllos.
#      h) La internación en un establecimiento
# hospitalario, psiquiátrico o de tratamiento
# especializado, según corresponda, en la medida que se
# requiera de los servicios que éstos ofrecen y ello sea
# indispensable frente a una amenaza a su vida o salud, e
# i) La prohibición de salir del país para el niño,
# niña o adolescente sujeto de la petición de protección.

# Artículo 92.- Medidas cautelares en protección de la víctima.
# 1. Prohibir al ofensor acercarse a la víctima y
# prohibir o restringir la presencia de aquél en el hogar
# común y en el domicilio, lugar de estudios o de trabajo
# de ésta, así como en cualquier otro lugar en que la
# víctima permanezca, concurra o visite habitualmente.
# Si ambos trabajan o estudian en el mismo lugar,
# se oficiará al empleador o director del establecimiento
# para que adopte las medidas de resguardo necesarias.
#
#      2. Asegurar la entrega material de los efectos
# personales de la víctima que optare por no regresar al
# hogar común.
#
#      3. Fijar alimentos provisorios.
#
#      4. Determinar un régimen provisorio de cuidado
# personal de los niños, niñas o adolescentes en
# conformidad al artículo 225 del Código Civil, y
# establecer la forma en que se mantendrá una relación
# directa y regular entre los progenitores y sus hijos.
#
#      5. Decretar la prohibición de celebrar actos o
# contratos.
#
#      6.- Prohibir el porte y tenencia de cualquier arma
#  de fuego, municiones y cartuchos; disponer la
#  retención de los mismos, y prohibir la adquisición
# o almacenaje de los objetos singularizados en el
#  artículo 2º de la ley Nº17.798, sobre Control de
#  Armas. De ello se informará, según corresponda, a
# la Dirección General de Movilización, a la Comandancia
#  de Guarnición o al Director del Servicio respectivo
# para los fines legales y reglamentarios pertinentes. Con
# todo, el imputado podrá solicitar ser excluido de
#  estas medidas en caso de demostrar que sus actividades
#  industriales, comerciales o mineras requieren de alguno
# de esos elementos.
#
#      7. Decretar la reserva de la identidad del tercero
# denunciante.
#
#      8. Establecer medidas de protección para adultos
# mayores o personas afectadas por alguna incapacidad o
# discapacidad.
