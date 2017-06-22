package strategy;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import com.pas.paswebclient.domain.TrainingMessage;

public class TrainingFileCreator {
	
	private String trainingFile;
	private ArrayList<TrainingMessage> messages = new ArrayList<>();
	
	public TrainingFileCreator() {
		trainingFile =  "@relation training\r\n";
		trainingFile += "@attribute Document string\r\n";
		trainingFile += "@attribute class {true,false}\r\n";
		trainingFile += "@data\r\n";
	}
	
	public void setTrainingFile(String trainingFile) {
		this.trainingFile = trainingFile;
	}
	
	public String getTrainingFile() {
		return trainingFile;
	}
	
	public void addTrainingMessage(TrainingMessage message) {
		messages.add(message);
	}
	
	public void createTrainingMessage() {
		for(TrainingMessage message : messages) {
			trainingFile += "\"" + message.getMessage() + "\", " + message.getIsPedophile() + "\r\n";
		}
	}
	
	public void uploadTrainingMessage() {
		try (PrintStream out = new PrintStream(new FileOutputStream("E:\\PASDev\\Training.arff"))) {
		    out.print(trainingFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} 
	}
}
