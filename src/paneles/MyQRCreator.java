package paneles;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO; 
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import java.awt.Color;
import java.awt.Graphics2D;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.EnumMap;
/**
 * @web http://www.jc-mouse.net/
 * @author Mouse
 */
public class MyQRCreator {
    
    /** Constructor de clase */
    public MyQRCreator(){}
    
    /**
     * Metodo que crea el QR
     * @param String data Texto a codificar
     * @param int size dimension (Alto,ancho) de la imagen a generar
     * @return BufferedImage
     */public static BitMatrix matrix;
    public BufferedImage createQR(String dato, int tamaño, Color colorp, Color colors)
    {
        
        Writer escribir = new MultiFormatWriter();
        BufferedImage bufferedImage = null;
        try {            
            EnumMap<EncodeHintType,String> hints = new EnumMap<EncodeHintType,String>(EncodeHintType.class);
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");      
            matrix = escribir.encode(dato, BarcodeFormat.QR_CODE, tamaño, tamaño, hints);            
            
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            MatrixToImageWriter.writeToStream(matrix, "PNG", output);
            byte[] data_array = output.toByteArray();
            ByteArrayInputStream input = new ByteArrayInputStream(data_array);
            
            bufferedImage = ImageIO.read(input);
            
            bufferedImage = new BufferedImage( 220,  220, BufferedImage.TYPE_INT_RGB);
            bufferedImage.createGraphics();             
            Graphics2D graphics = (Graphics2D) bufferedImage.getGraphics();
            graphics.setColor(colorp);
            graphics.fillRect(0, 0,  220,  220);
            graphics.setColor(colors);
            for (int i = 0; i < 220; i++) {
                for (int j = 0; j < 220; j++) {
                    if (matrix.get(i, j)) {
                        graphics.fillRect(i, j, 1, 1);
                    }
                }
            }
            
            return bufferedImage;  
            
        } catch (com.google.zxing.WriterException ex) {
            System.err.println(ex.getMessage());
        } catch (IOException ex) {
            System.err.println(ex.getMessage());
        }
        return null;
    }
    
}//end:MyQRCreator
