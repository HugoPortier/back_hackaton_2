DROP TABLE IF EXISTS potion;
create table `potion`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(50) NOT NULL,
    `effet` VARCHAR(200) NOT NULL,
    `image` VARCHAR(200) NOT NULL,
    `duration` VARCHAR(15) NOT NULL,
    `age_min` VARCHAR(20) NULL,
    `age_max` VARCHAR(20) NULL,
    `categorie` VARCHAR(20) NOT NULL,
    `prix` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`id`)
    );

-- rajouter prix

ALTER TABLE `potion` ADD `prix` VARCHAR(50) NOT NULL; 

-- DB

{
    "nom": "Philtre d'amour",
    "effet": "Philtre d'amour pour faire tomber amoureux deux personnes qui le boive.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Filtre_d%27Amour.jpg/280px-Filtre_d%27Amour.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Amour",
    "prix": "999"
},
{
    "nom": "Bave de crapaud",
    "effet": "Transforme un être humain en crapaud",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Bave_de_Crapaud.jpg/800px-Bave_de_Crapaud.jpg",
    "duration": "300",
    "age_min": "18",
    "age_max": "60",
    "categorie": "Magie noire",
    "prix": "1100"
},
{
    "nom": "Opium du Peuple",
    "effet": "Permet de convaincre n'importe qui !",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Opium_du_Peuple.jpg/800px-Opium_du_Peuple.jpg",
    "duration": "60",
    "age_min": "5",
    "age_max": "70",
    "categorie": "Magie noire",
    "prix": "500"
},
{
    "nom": "Elixir de Jouvence",
    "effet": "Elixir de Jouvence pour la chance de chaque jour ",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Elixir_de_Jouvence.jpg/800px-Elixir_de_Jouvence.jpg",
    "duration": "300",
    "age_min": "25",
    "age_max": "150",
    "categorie": "Chance",
    "prix": "888"
}
{
    "nom": "Chance liquide",
    "effet": "Chance liquide pour la chance de chaque jour ",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Chance_Liquide.jpg/800px-Chance_Liquide.jpg",
    "duration": "300",
    "age_min": "14",
    "age_max": "150",
    "categorie": "Chance",
    "prix": "678"   
},
{
    "nom": "The Love Potion",
    "effet": "The Love Potion pour faire tomber amoureux deux personnes qui le boive.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/5/5c/The_Love_Potion.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Amour",
    "prix": "888"
},
{
    "nom": "Tristan et Iseut",
    "effet": "Tristan et Iseut pour faire tomber amoureux deux personnes qui le boive.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/John_Duncan_-_Tristan_%26_Isolde.jpg/800px-John_Duncan_-_Tristan_%26_Isolde.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Amour",
    "prix": "1000"
},
{
    "nom": "Philtre",
    "effet": "Philtre pour faire tomber amoureux deux personnes qui le boive.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Bave_de_Crapaud.jpg/800px-Bave_de_Crapaud.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "75",
    "categorie": "Amour",
    "prix": "450"
},
{
    "nom": "Potion d'amour Iseult",
    "effet": "Potion d'amour Iseult pour faire tomber amoureux deux personnes qui le boive.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Frederick_Sandys_-_Isolda_con_la_poci%C3%B3n_de_amor.jpg/800px-Frederick_Sandys_-_Isolda_con_la_poci%C3%B3n_de_amor.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "55",
    "categorie": "Amour",
    "prix": "789"
},
{
    "nom": "Distillat de Bonheur",
    "effet": "Distillat de Bonheur porte-bonheur au meilleur prix ! ",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Chance_Liquide_et_Distillat_de_Bonheur.jpg/800px-Chance_Liquide_et_Distillat_de_Bonheur.jpg",
    "duration": "100",
    "age_min": "14",
    "age_max": "150",
    "categorie": "Bonheur",
    "prix": "650"
},
{
    "nom": "Bonheur 2",
    "effet": "< Bonheur 2 > porte-bonheur au meilleur prix !",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Distillat_de_Bonheur.jpg/800px-Distillat_de_Bonheur.jpg",
    "duration": "100",
    "age_min": "10",
    "age_max": "100",
    "categorie": "Bonheur",
    "prix": "450"
},
{
    "nom": "Concentré d'Intelligence",
    "effet": "Concentré d'Intelligence parfait pour s'assurer une journée de travail parfaite ou pour développer sa créativité.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Concentr%C3%A9_d%27Intelligence.jpg/800px-Concentr%C3%A9_d%27Intelligence.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Intelligence",
    "prix": "450"
},
{
    "nom": "Concentré de Médisances",
    "effet": "Réaliser le rituel de malédiction.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Concentr%C3%A9_de_M%C3%A9disances.jpg/800px-Concentr%C3%A9_de_M%C3%A9disances.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Magie Noir",
    "prix": "450"
},
{
    "nom": "Potions et vieux grimoires",
    "effet": "Réaliser le rituel de malédiction.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Potions_et_vieux_grimoires.jpg/800px-Potions_et_vieux_grimoires.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Magie Noir",
    "prix": "700"
},
{
    "nom": "Jus de chaussette",
    "effet": "Réaliser le rituel de malédiction.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Jus_de_chaussette.jpg/800px-Jus_de_chaussette.jpg",
    "duration": "100",
    "age_min": "25",
    "age_max": "75",
    "categorie": "Magie Noir",
    "prix": "500"
},
{
    "nom": "Opium du Peuple",
    "effet": "Opium du Peuple parfait pour s'assurer une journée de travail parfaite ou pour développer sa créativité.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Opium_du_Peuple.jpg/800px-Opium_du_Peuple.jpg",
    "duration": "100",
    "age_min": "16",
    "age_max": "65",
    "categorie": "Intelligence",
    "prix": "330"
},
{
    "nom": "Lait de Licorne",
    "effet": "Lait de Licorne parfait pour s'assurer une journée de travail parfaite ou pour développer sa créativité.",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Lait_de_Licorne.jpg/800px-Lait_de_Licorne.jpg",
    "duration": "100",
    "age_min": "30",
    "age_max": "85",
    "categorie": "Intelligence",
    "prix": "300"
},
{
    "nom": "Terre d'Utopie",
    "effet": " Fait de se sentir (plus) jeune, de retrouver un état psychologique et moral caractéristique de la jeunesse",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Terre_D%27Utopie.jpg/800px-Terre_D%27Utopie.jpg",
    "duration": "100",
    "age_min": "50",
    "age_max": "85",
    "categorie": "Rajeunissement",
    "prix": "1300"
},
{
    "nom": "Poudre d'Ecampette",
    "effet": " Fait de se sentir (plus) jeune, de retrouver un état psychologique et moral caractéristique de la jeunesse",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Poudre_d%27Ecampette.jpg/800px-Poudre_d%27Ecampette.jpg",
    "duration": "100",
    "age_min": "40",
    "age_max": "150",
    "categorie": "Rajeunissement",
    "prix": "1500"
},
{
    "nom": "Poils de Centaure",
    "effet": " Fait de se sentir (plus) jeune, de retrouver un état psychologique et moral caractéristique de la jeunesse",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Poils_de_Centaure.jpg/800px-Poils_de_Centaure.jpg",
    "duration": "100",
    "age_min": "60",
    "age_max": "150",
    "categorie": "Rajeunissement",
    "prix": "1100"
},
{
    "nom": "Styx",
    "effet": " Fait de se sentir (plus) jeune, de retrouver un état psychologique et moral caractéristique de la jeunesse",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Mati%C3%A8re_grise%2C_Eau_du_Styx.jpg/800px-Mati%C3%A8re_grise%2C_Eau_du_Styx.jpg",
    "duration": "100",
    "age_min": "50",
    "age_max": "130",
    "categorie": "Rajeunissement",
    "prix": "900"
},
{
    "nom": "Utopie 2",
    "effet": " Fait de se sentir (plus) jeune, de retrouver un état psychologique et moral caractéristique de la jeunesse",
    "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Mati%C3%A8re_grise%2C_Eau_du_Styx%2C_Terre_d%27Utopie.jpg/800px-Mati%C3%A8re_grise%2C_Eau_du_Styx%2C_Terre_d%27Utopie.jpg",
    "duration": "100",
    "age_min": "40",
    "age_max": "100",
    "categorie": "Rajeunissement",
    "prix": "800"
}




