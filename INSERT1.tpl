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
                            <h1>Insert Dependency page</h1>

                            <form action="/insertdependency+{{Year}}" method='post'>
                             MVP: <input type="text" name="MVP">
                             <b>Most Valuable Player</b> 
                             <br>

                             Defender: <input type="text" name="Defender">
                             <b>Final Most Valuable Player</b> 
                             <br>

                             Scorer: <input type="text" name="Scorer">
                             <b>The player with highest average score</b> 
                             <br>

                             Most_improvement: <input type="text" name="Most_improvement">
                            <b>Most Improvement Player</b> 
                            <br>
                            <input type="submit">
                            </form>



                        </div>
                    </div>
                </body>
            </html>
            '''