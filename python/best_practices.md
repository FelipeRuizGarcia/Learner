##### Separate the dependencies 

![image](https://user-images.githubusercontent.com/14207635/124386198-83ab7d00-dcd9-11eb-9c0b-2f1f58952ca0.png)


requirements_prod.txt should containt the least dependencies for production.
Think in those to be include in the artifact: small artifact
        

##### Use Models
Use models to parse and validate data. 

Pydantic library:
https://pydantic-docs.helpmanual.io/usage/models/

---

##### Use Configs

Use a config ini for the project, to define variables, paths, environments and other resources dependencies.
https://wiki.python.org/moin/ConfigParserExamples
