<!DOCTYPE html>
<head>
    <link rel="SHORTCUT ICON" href="forlogo.jpg" type="img/x-icon">
    <title>Comments</title>
    <link rel="stylesheet" type="text/css" href="/static/formenu.css">
    <meta charset="UTF-8">
    <style>
        .button {
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
            background-color: white;
            color: black;
            border: 2px solid #008CBA;
        }
        .button:hover {
            background-color: #4CAF50; /* Green */
            color: white;
            background-color: #008CBA;
            color: white;
        }
        label {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            color: white;
        }
        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 4px solid #008cba;
            border-radius: 4px;
        }
        input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 4px solid #008cba;
            border-radius: 4px;
        }
        h1 {
            text-align: center;
            vertical-align: top;
            font-size: 350%;
            color: white;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        p {
            text-align: center;
            font-size: 100%;
            color: white;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: 150;
        }
        ol {
            text-align: left;
            font-size: 130%;
            color: black;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: 150;
        }
        body {
            background-image: url("/static/backgroundhome.jpg");
            background-size: cover;
            background-color: #cccccc;
        }
    </style>
</head>
<body>
    <div style="width:100%; height:100%;">
        <div style="width: 100%; height: 20%;">
            <ul>
                <li><a class="active" href="/static/index.html">Home</a></li>
                <li><a href="/static/animals.html">Animals</a></li>
                <li><a href="/static/documentaries.html">Documentaries</a></li>
                <li><a href="/static/comments.html">Comments</a></li>
                <li><img src="/static/forlogo.jpg" title="logo"></li>
            </ul>
        </div>
        <div style="width:40%; height:100%;">
            <h1>
                Your feedback is very precious for us
            </h1>
            <form method="post" action="/postComment">
                <fieldset>
                    <legend>
                        <p>Leave a comment</p>
                    </legend>
                    <label>Do yo like this website?</label>
                    <input type="radio" name="a" value="Yes"> <label>Yes</label>
                    <input type="radio" name="a" value="No"><label>No</label><br>
                    <label for="comment">Comment</label>
                    <input name='comment' type="text" >
                    <label for="password">Password</label>
                    <input name='password' type="password" >
                    <input type='submit' value='Enter'class="button">
                </fieldset>
            </form>
            <div>
                %for row in rows:
                <p>{{row}}</p>
                %end
            </div>
        </div>
    </div>
</body>
</html>