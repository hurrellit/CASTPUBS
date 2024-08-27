package com.castsoftware.util.io;

public class Recorder
{
	String FileName;
	boolean downWritten=false;

	public Recorder(String file) throws java.io.IOException{
		FileName=file;
	}

	public void Add(String txt){
		try{
			java.io.FileOutputStream stream=new java.io.FileOutputStream(FileName, true);
			java.io.OutputStreamWriter writer=new java.io.OutputStreamWriter(stream);
			java.io.BufferedWriter file=new java.io.BufferedWriter(writer);

			java.util.Date now = new java.util.Date();
			java.text.DateFormat df = new java.text.SimpleDateFormat ("HH:mm:ss - dd/MM/yyyy");
			String currentTime = df.format(now);
			file.write(currentTime+" "+txt);
			file.newLine();
			file.flush();
			file.close();
			writer.close();
			stream.close();
		}
		catch (java.io.IOException e){
		}
	}

	public void dispose(){
		if (!downWritten){
			Add("DOWN");
			downWritten=true;
		}
	}
}
