package test;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
 
public class sendSMS {
	public static void main(String[] args) {
		System.out.println("Hello Send SMS"+sendSms());
		
	}
	public static String sendSms() {
		try {
			// Construct data
			String apiKey = "apikey=" + "IPZN6n9DfkE-2Qz5UW7gtTe2BHgecwNcPfWjagejXz";
			String message = "&message=" + "You has successfully registred as volunteer in Jananetha";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "8121797979";
			
			/*
			 * String message = "&message=" +
			 * "You has successfully registred as volunteer in Jananetha "; String sender =
			 * "&sender=" + "JANANETHA"; String numbers = "&numbers=" + "8121797979";
			 */
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			
			return stringBuffer.toString();
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			return "Error "+e;
		}
	}
}