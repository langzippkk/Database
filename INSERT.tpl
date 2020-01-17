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
                        <li><a href="#">New Student</a></li>
                    </ul>
                    </div><!--/.nav-collapse -->
                   
                    
                    <div class="container">
                        <div class="starter-template">
                            <!-- Main content should go here-->
                            <h1>Insert page</h1>

                            <form action="/INSERT" method='post'>
                             Name: <input type="text" name="championship">
                             <b>Championship team name</b> 
                             <br>
                             Year: <input type="integer" name="Year">
                             <b>Must be unique and not empty</b> 
                             <br>
                             Time: <input type="date" name="Time">
                             <b>could be empty or </b> 
                              <b>ie: 2020-05-13</b> 
                              <br>
                             teamtotal: <input type="integer" name="teamtotal">
                             <b>Number of teams for this year</b> 
                             <br>
                            <input type="submit">
                            </form>



                        </div>
                    </div>
                </body>
            </html>
            '''