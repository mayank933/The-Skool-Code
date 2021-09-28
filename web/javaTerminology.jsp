<%-- 
    Document   : javaTerminology
    Created on : 18-Sep-2021, 5:02:08 PM
    Author     : Rohit
--%>
<%@page import="com.code.blog.entities.User"%>
<%@page errorPage="error_page.jsp"%>
<%
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 89%, 71% 94%, 39% 91%, 0 100%, 0 0);

            }
        </style>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="profile.jsp">The Skool Code                                          <span class ="fa fa-user-secret"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Practive Questions <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Blogs</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Subjects
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Java</a>
          <a class="dropdown-item" href="#">CPP</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Python</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Skool Code</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="_______________________________login.jsp"><%= user.getName() %></a>
      </li>
      
    </ul>
<!--    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>-->
<div class="dropdown primary-background3">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <%= user.getEmail() %>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Profile</a>
    <a class="dropdown-item" href="#">Score</a>
    <a class="dropdown-item" href="#">Bookmarks</a>
     <a class="dropdown-item" href="#">Settings</a>
      <a class="dropdown-item" href="LogoutServlet">Logout</a>
  </div>
  </div>
    
  </div>
</nav>
  <main>
      <div class="container m-0" style="max-width: 2000px">
          <div class="row bg-dark" >
              <%@include file="JavaContentFrame.jsp" %>
              <div class="col-md-10 text-white mt-5 ">
                  <div class="container my-0" >
<!--                      Content-->
<h1>Java Terminology</h1><br><!-- comment --><br>
<p>Before learning Java, one must be familiar with these common terms of Java.</p>
<p><b>1.  Java Virtual Machine(JVM):</b>This is generally referred to as JVM. There are three execution phases of a program. They are written,<br>
compile and run the program.</p>
<ul>
    <li>Writing a program is done by a java programmer like you and me.</li>
    <li>The compilation is done by the JAVAC compiler which is a primary Java compiler included in the Java development kit (JDK). It takes<br><!-- comment -->
    Java program as input and generates bytecode as output.</li>
    <li>In the Running phase of a program, JVM executes the bytecode generated by the compiler.</li>
</ul>
<p>
    Now, we understood that the function of Java Virtual Machine is to execute the bytecode produced by the compiler. Every Operating<br>
    System has a different JVM but the output they produce after the execution of bytecode is the same across all the operating systems.<br>
    This is why Java is known as a platform-independent language.<br>
    <br>
    <b>2. Bytecode in the Development process: </b>As discussed, the Javac compiler of JDK compiles the java source code into bytecode so that<br>
    it can be executed by JVM. It is saved as .class file by the compiler. To view the bytecode, a disassembler like javap can be used.<br>
    <b>3. Java Development Kit(JDK):</b>While we were using the term JDK, when we learn about bytecode and JVM . So, as the name suggests,<br>
    it is a complete Java development kit that includes everything including compiler, Java Runtime Environment (JRE), java debuggers,<br>
    java docs, etc. For the program to execute in java, we need to install JDK on our computer in order to create, compile and run the java<br>
    program.<br>
    <br>
    <br>
    <b>4. Java Runtime Environment (JRE): </b>JDK includes JRE. JRE installation on our computers allows the java program to run, however, we<br>
    cannot compile it. JRE includes a browser, JVM, applet supports, and plugins. For running the java program, a computer needs JRE.<br>
    <br>
    <b>5. Garbage Collector:</b>In Java, programmers can’t delete the objects. To delete or recollect that memory JVM has a program called<br>
    Garbage Collector. Garbage Collectors can recollect the of objects that are not referenced. So Java makes the life of a programmer<br>
    easy by handling memory management. However, programmers should be careful about their code whether they are using objects that<br>
    have been used for a long time. Because Garbage cannot recover the memory of objects being referenced.<br>
    <b>6. ClassPath:</b>The classpath is the file path where the java runtime and Java compiler look for .class files to load. By default, JDK<br>
    provides many libraries. If you want to include external libraries they should be added to the classpath.<br>
    <br>
<h3>Primary/Main Features of Java</h3><br>
    <br>
    <b>1. Platform Independent:</b>Compiler converts source code to bytecode and then the JVM executes the bytecode generated by the<br>
    compiler. This bytecode can run on any platform be it Windows, Linux, macOS which means if we compile a program on Windows, then<br>
    we can run it on Linux and vice versa. Each operating system has a different JVM, but the output produced by all the OS is the same<br>
    after the execution of bytecode. That is why we call java a platform-independent language.<br>
    <b>2. Object-Oriented Programming Language:</b>Organizing the program in the terms of collection of objects is a way of object-oriented<br>
    programming, each of which represents an instance of the class.<br>
    <br><!-- comment -->
    <br><!-- comment -->

    <p>The four main concepts of Object-Oriented programming are:</p>
        <ul>
     <li>Abstraction</li>
     <li>Encapsulation</li>
     <li>Inheritance</li>
     <li>Polymorphism</li></ul>   
    <br><!-- comment -->
    <br>
    <b>3. Simple:</b>Java is one of the simple languages as it does not have complex features like pointers, operator overloading, multiple<br>
    inheritances, Explicit memory allocation. <br>
    <br>
    <b>4. Robust:</b>Java language is robust that means reliable. It is developed in such a way that it puts a lot of effort into checking errors as<br>
    early as possible, that is why the java compiler is able to detect even those errors that are not easy to detect by another programming<br><!-- comment -->
    language. The main features of java that make it robust are garbage collection, Exception Handling, and memory allocation.<br>
    <br>
    <b>5. Secure:</b>In java, we don’t have pointers, and so we cannot access out-of-bound arrays i.e it shows<br>
    In java, we don’t have pointers, and so we cannot access out-of-bound arrays i.e it shows<br>
    impossible to exploit in Java.      <br>
    <br>
    <b> 6. Distributed:</b>We can create distributed applications using the java programming language. Remote Method Invocation and<br>
    Enterprise Java Beans are used for creating distributed applications in java. The java programs can be easily distributed on one or more<br>
    systems that are connected to each other through an internet connection.<br>
    <br>
    <b>7. Multithreading:</b>Java supports multithreading. It is a Java feature that allows concurrent execution of two or more parts of a<br>
    program for maximum utilization of CPU.<br>
    <br>
    <b>8. Portable:</b> As we know, java code written on one machine can be run on another machine. The platform-independent feature of java<br>
    in which its platform-independent bytecode can be taken to any platform for execution makes java portable.<br>
    <br>
    <b> Writing a “HELLO WORLD” Program in Java</b>
    <pre class="text-white">
 
  <div class="container m-10">
      <pre class="text-white">
       import java.io.*; 
        class GFG 
        {
            public static void main(String[] args)
            {
                // prints Hello World
                System.out.println("Hello World");
            }
        } </pre>
      
</div>     

<h2>Output</h2><br><!-- <br> -->
    <br>
    Hello World<br>
    
</p>
                      
                      
                      
                  </div>
              </div>
          </div>
      </div>
  </main>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    <%@include file="footer.jsp" %>
       <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>