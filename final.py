from bottle import route,run
from bottle import template,post,get
from bottle import error,request,redirect
import psycopg2
import connection

##############################################################3



## Your home page should (0) have a form that allows you to search for 
##a record by at least 3 different attributes. 
##One of these attributes must be a string that searches for like matches. 
##This entity or relation, must have a 
#key that is a foreign key for at least
## one other table.



@route('/')
def Search():
    return '''
                <html>
                <head>
                    <title>mpcs 53001 example</title>
                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
                </head>
                <body>
                    <!-- Nav Bar-->
                    <div id="navbar" class="collapse navbar-collapse navbar-inverse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/">Home</a></li>
        
                    </ul>
                    </div><!--/.nav-collapse -->
                   
                    
                    <div class="container">
                        <div class="starter-template">
                            <!-- Main content should go here-->
                            <h1>Home Search Page</h1>

                            <form action="/" method='post'>
                             Championship team: <input type="text" name="championship">
                             Year: <input type="integer" name="Year">
                             Number of teams: <input type="integer" name="teamtotal">
                            <input type="submit">
                            </form>

                            <form action="/NBA1">
                            <button onclick="window.location.href = /NBA1;">Show New Players</button>
                            </form>


                        </div>
                    </div>
                </body>
            </html>
            '''



@route('/',method='POST')
def do_Searchpage():
    championship = request.forms.get('championship')
    Year= request.forms.get('Year')
    teamtotal = request.forms.get('teamtotal')
    print(championship, Year, teamtotal)
    if championship == '':
        championship = 'None'
    if Year == '':
        Year = 'None'
    if teamtotal == '':
        teamtotal = 'None'
    redirect ('/view1?championship=%s&year=%s&teamtotal=%s' % (championship,Year,teamtotal))


@route('/view1')
def view():
    ## this try will catch error such like you input "@#!@#" for any attributes
    try:
        championship = request.query['championship']
        Year = request.query['year']
        teamtotal = request.query['teamtotal']
    except:
        return '''
                <html> 
                <body>
                
                Input format is wrong!

                </body>
                </html>
            '''

    ## year and teamtotal error handling
    try:
        if Year != "None":
            Year_try = int(Year)
        if teamtotal != "None":
            teamtotal_try = int(teamtotal)
    except:
        return '''
                <html> 
                <body>
                
                Input format is wrong!

                </body>
                </html>
            '''
    if championship != "None" and Year == "None" and teamtotal == "None":
        sql = 'SELECT * from year WHERE LOWER(championship) LIKE LOWER(%s) LIMIT 50'
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        search_term = championship
        like_pattern = '%{}%'.format(search_term)
        cur.execute(sql, (like_pattern,))
        ## handling the case that no result shows !!
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if Year != "None" and teamtotal == "None" and championship == "None":
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute("select * from year where year = (%s) LIMIT 50",(Year,))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if teamtotal != "None" and championship == "None" and Year == "None" :
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute("select * from year where teams_total = (%s) LIMIT 50",(teamtotal,))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if teamtotal != "None" and championship == "None" and Year != "None" :
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute("select * from year where teams_total = (%s) AND year = %s LIMIT 50",(teamtotal,Year))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if teamtotal != "None" and championship != "None" and Year == "None" :
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute("select * from year where teams_total = (%s) AND LOWER(championship) LIKE LOWER(%s) LIMIT 50",(teamtotal,'%{}%'.format(championship)))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if teamtotal == "None" and championship != "None" and Year != "None" :
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute("select * from year where LOWER(championship) LIKE LOWER(%s) AND year = %s  LIMIT 50",('%{}%'.format(championship),Year))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    if teamtotal != "None" and championship != "None" and Year != "None" :
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)        
        cur = conn.cursor()
        cur.execute("select * from year where LOWER(championship) LIKE LOWER(%s) AND year = %s  AND teams_total = (%s) LIMIT 50",('%{}%'.format(championship),Year,teamtotal))
        if cur.rowcount == 0:
            return template('test_template6.tpl',championship=championship,year=Year,teamtotal=teamtotal)
        return template('test_template5.tpl',cur=cur)
    else:
        return '''
            <html> 
            <body>
            
            you are searching nothing

            </body>
            </html>
            '''


# (3) a button or link to delete the record
@route('/del+<Year>')
def delete_record(Year):
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("DELETE from year where year = (%s)",(Year,))
    conn.commit()
    return '''
            <html> 
            <body>
            
            delete!

            </body>
            </html>
            '''

## (4) a link to view a list or table of all records from a foreign key relationship

@route('/NBA2')
def NBA_TEST():
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("select * from honor")
    return template('test_template4.tpl',cur=cur)

@route('/INSERT')
def NBA_INSERT():
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    return template('INSERT.tpl')

### insert post methoD
### (6) a link to create a new record that could appear in the search result.

## time 
@route('/INSERT',method='POST')
def do_INSERT():
    championship = request.forms.get('championship')
    time = request.forms.get('Time')
    Year= request.forms.get('Year')
    teamtotal = request.forms.get('teamtotal')
    ## error handling of championship
    if (not championship.isalpha()):
        return '''
            "Invalid input for team Name, team Name has to be letters only and not null" 
            '''
    ## error handling of Year
    try: int(Year)
    except:
        return '''
                "Invalid input for team Year, Year has to be an integer" 
                '''
    if ((int(Year)>20000) or (int(Year)<=0)):
        return '''
            "Invalid input for team Year, Year has to be in the range of 0 to 20000" 
            '''

    try: int(teamtotal)
    except:
        return '''
                "Invalid input for team number of teams, it has to be an integer" 
                '''
    if ((int(teamtotal)<20) or (int(teamtotal)>50)):
        return '''
            "Invalid input for number of teams, it has to be in the range of 20 to 50" 
            '''
    if len(time) == 0:
        time = None
    if len(teamtotal) == 0:
        time = None
    if len(championship) == 0:
        time = None
    if len(Year) == 0:
        raise ValueError("Year could not be empty")



    redirect ('/championship=%s/Year=%s/time=%s/teamtotal=%s' % (championship,Year,time,teamtotal))


@route('/championship=<championship>/Year=<Year>/time=<time>/teamtotal=<teamtotal>')
def insert(championship,Year,time,teamtotal):
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        try:
            if time == "None":
                cur.execute(""" 
                    INSERT INTO year(year,teams_total,championship) VALUES
                (%s,%s,%s);""",(Year,teamtotal,championship))
                conn.commit()
                return '''
                    </body>
                    </html> 

                    "INSERT!" 

                    </body>
                    </html>
                    '''
            else:
                cur.execute(""" 
                    INSERT INTO year(year,teams_total,season_start,championship) VALUES
                (%s,%s,%s,%s);""",(Year,teamtotal,time,championship))
                conn.commit()
                return '''
                    </body>
                    </html> 

                    "INSERT!" 

                    </body>
                    </html>
                    '''
        except:
            return '''
                  "Key already exist, please input another year!" 
                    '''

### dependency
## a link to view a list or table of all records from a 
## foreign key relationship (this list does not have to give all attributes from the other relation, but must show at least 4 attributes),
@route('/dependency+<Year>')
def dependency_record(Year):
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("SELECT * from honor where year = (%s)",(Year,))
    return template('test_template4.tpl',cur=cur)


## Insert record in dependency table

@route('/insertdependency+<Year>')
def NBA_INSERTDEPENDENCY(Year):
    global Year_temp
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    url = request.url
    Year_temp = url[-4:]
    print(Year_temp)
    return template('INSERT1.tpl', Year = Year_temp)

## Year variable !!!!!!!!!!!!!!!!!!!
@route('/insertdependency+<Year_temp>',method='POST')
def do_INSERT_dependency(Year_temp):
    MVP = request.forms.get('MVP')
    Defender = request.forms.get('Defender')
    Scorer= request.forms.get('Scorer')
    Most_improvement= request.forms.get('Most_improvement')

    if len(MVP) == 0:
        MVP = "None"
    if len(Defender) == 0:
        Defender = "None"
    if len(Most_improvement) == 0:
        Most_improvement = "None"
    if len(Scorer) == 0:
        Scorer = "None"
    if (not (''.join(MVP.split())).isalpha() or (not (''.join(Defender.split())).isalpha()) or (not (''.join(Scorer.split())).isalpha()) or (not (''.join(Most_improvement.split())).isalpha())):
        return '''
                "Invalid input for Player Names, Names have to be letters only and split by space"
                '''
    redirect ('/dependency=%s/dependency=%s/dependency=%s/dependency=%s/dependency=%s' % (Year_temp,MVP,Defender,Scorer,Most_improvement))



@route('/dependency=<Year_temp>/dependency=<MVP>/dependency=<Defender>/dependency=<Scorer>/dependency=<Most_improvement>')
def insertdependency(Year_temp,MVP,Defender,Scorer,Most_improvement):
    try:
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        cur.execute(""" 
            INSERT INTO honor(Year,mvp,defender,scorer,improvement) VALUES
            (%s,%s,%s,%s,%s);""",(Year_temp,MVP,Defender,Scorer,Most_improvement))
        conn.commit()
        return '''
            </body>
            </html> 

            "INSERT DEPENDENCY!" 

            </body>
            </html>
            '''
    except:
        return '''
        "You already have honors in year {} and a year cannot have two different honor"

        '''.format(Year_temp)

##2) a link to view and/or update the record

@route('/viewedit+<Year>')
def NBA_VIEWEDIT(Year):
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("SELECT * from year where year = (%s)",(Year,))
    return template('VIEWEDIT.tpl',cur=cur,Year=Year)


@route('/viewedit+<Year>',method='POST')
def NBA_VIEWEDITPOST(Year):
    championship = request.forms.get('Championship')
    time = request.forms.get('season_start')
    Year= request.forms.get('Year')
    teamtotal = request.forms.get('teams_total')
    if len(time) == 0:
        time = None
    redirect ('/viewedit=%s/viewedit=%s/viewedit=%s/viewedit=%s' % (championship,time,teamtotal,Year))


@route('/viewedit=<championship>/viewedit=<time>/viewedit=<teamtotal>/viewedit=<Year>')
def edit_record(championship,time,Year,teamtotal):
        conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
        cur = conn.cursor()
        ### SQL code to change the record!!

        try:
            ## handling invalid input for teamtotal
            if ((int(teamtotal)<20) or (int(teamtotal)>50)):
                return '''
                       "Invalid input for number of teams, it has to be in the range of 20 to 50" 
                       '''
            ## handling invalid input for championship name
            if (not championship.strip().isalpha()):
                return '''
                       "Invalid input for team Name, team Name has to be letters only and not null" 
                       '''
            if time != "None":
                cur.execute(""" 
                    UPDATE year
                    SET championship=%s,season_start=%s,teams_total=%s
                    where year = %s""",(championship,time,teamtotal,Year))
                conn.commit()
            else:
                cur.execute(""" 
                    UPDATE year
                    SET championship=%s,teams_total=%s
                    where year = %s""",(championship,teamtotal,Year))
                conn.commit()

            return '''

                </body>
                </html> 

                "You have changed a record" 

                </body>
                </html>
                '''

        except:
            return '''
            "Wrong input format, championship team name has to be string
            number of teams has to an integer"

            '''

@error(404)
def error404(error):
    return 'Nothing here, sorry'


##############################################################

@route('/NBA')
def do_NBA():
    print("NBA")
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("select * from newplayer")
    return template('test_template.tpl',cur=cur)


@route('/NBA1')
def NBA_TEST():
    conn = psycopg2.connect(host=connection.url,database = connection.database, user=connection.user,password = connection.password)
    cur = conn.cursor()
    cur.execute("select * from newplayer")
    return template('test_template.tpl',cur=cur)

######################################################################################  
run(host = 'localhost',port=8080,debug=True)
