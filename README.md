Welcome to # Projet Retail DBT - Pipeline ETL BigQuery

## Description

Ce projet illustre un pipeline ETL simple avec dbt et BigQuery, organisé en plusieurs étapes de transformation pour assurer modularité, qualité, et maintenabilité.

---

## Structure du projet

- `raw_sales` : table brute importée manuellement dans BigQuery  
- `models/stg_sales.sql` : modèle **staging**, nettoie et prépare les données brutes  
- `models/int_sales_metrics.sql` : modèle **intermédiaire**, enrichit les données (ajout colonnes date, prix moyen…)  
- `models/fct_sales.sql` : modèle **final**, agrège les données pour produire les KPIs prêts à être utilisés dans un dashboard

---

## Pourquoi cette organisation ?

- **Modularité** : découpage clair des transformations pour faciliter la lecture et la maintenance  
- **Réutilisabilité** : chaque modèle peut être réutilisé dans d’autres pipelines  
- **Tests** : possibilité de tester la qualité des données à chaque étape  
- **Performance** : choix de matérialiser certaines étapes pour optimiser les temps de calcul  
- **Collaboration** : facilite le travail en équipe entre data engineers, analystes, et BI developers

---

## Comment utiliser ce projet

1. Importer le fichier CSV `sales_data.csv` dans BigQuery (table `raw_sales`)  
2. Configurer dbt (profil `profiles.yml`) avec les accès à BigQuery  
3. Lancer les commandes dbt suivantes :  
   ```bash
   dbt debug  
   dbt run  
   dbt test  
   dbt docs generate  
   dbt docs serve  


### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
