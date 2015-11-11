# Industria Petrolera
Proyecto para la materia de Seguridad Informática (tc) Ago-Dic 2015

### Configs
#### Database
**Database:** `oilsec`
**Username:** `oiluser`
**Password:** `oiluser`



# Workflow
1. Install Docker in your system
2. Install _virtualenv_ or _virtualenvwrapper_ and install `docker-compose`:
`pip install docker-compose`
3. Clone the project:
`git clone https://github.com/gomezhyuuga/OilSecurity.git
4. Start the app with:
`make`
Make sure you have at least generated the __.war__ of the application. You can do this by execute the __clean and build__ task in Netbeans.
The __.war file__ is located at `<project_dir>/dist/OilSecurity.war`
5. Open the app from `http://localhost:8080/`

__Execute ‘Clean and Build’ every time you make a change in the code__