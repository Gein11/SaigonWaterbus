package Nhom5_ASMGD1.Ultil;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.stereotype.Component;

@Component
public class CreateQrCode {
	
	public final String dauCach="%20";
	public final String xuongDong="%0A";
	public final String size="&size=300x300";
    public String createUrl(String benDi, String ngayKh, String tenGhe, String giodi) throws UnsupportedEncodingException {
        StringBuilder urlGet = new StringBuilder("http://api.qrserver.com/v1/create-qr-code/?data=");
        urlGet.append(URLEncoder.encode("Bến Đi:" + benDi, "UTF-8")).append(xuongDong)
              .append(URLEncoder.encode("Ngày Khởi Hành:" + ngayKh, "UTF-8")).append(xuongDong)
              .append(URLEncoder.encode("Ghế Đã Đặt:" + tenGhe, "UTF-8")).append(xuongDong)
              .append(URLEncoder.encode("Giờ Khởi Hành:" + giodi, "UTF-8")).append(size);
        return urlGet.toString();
    }
	 public static String saveQRCodeToFile(String urlQr) throws IOException {

	        URL url = new URL(urlQr);
	        try (InputStream in = url.openStream();
	             ReadableByteChannel rbc = Channels.newChannel(in)) {

	            String directory = "img";
	            Files.createDirectories(Paths.get(directory));

	            // Tạo tên file dựa trên thời gian hiện tại
	            String fileName = "qr_code_" + System.currentTimeMillis()+".png";

	            // Đường dẫn đến thư mục img
	            String filePath = Paths.get(directory, fileName).toString();

	            // Tạo và lưu file QR code
	            try (FileOutputStream fos = new FileOutputStream(filePath)) {
	                fos.getChannel().transferFrom(rbc, 0, Long.MAX_VALUE);
	            }

	            return filePath;
	        }
	    }
}
