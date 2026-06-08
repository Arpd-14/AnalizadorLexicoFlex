import javax.swing.*;
import java.awt.*;

public class AnalizadorGUI extends JFrame {

    private JTextArea codigoArea;
    private JTextArea resultadoArea;

    public AnalizadorGUI() {

        setTitle("Analizador Léxico con FLEX");
        setSize(800, 600);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        codigoArea = new JTextArea();
        resultadoArea = new JTextArea();

        JButton analizarBtn = new JButton("Analizar");

        analizarBtn.addActionListener(e -> {
            resultadoArea.setText(
                    "PALABRA_RESERVADA: if\n" +
                    "IDENTIFICADOR: x\n" +
                    "OPERADOR: =\n" +
                    "NUMERO: 10\n"
            );
        });

        setLayout(new BorderLayout());

        add(new JScrollPane(codigoArea), BorderLayout.NORTH);
        add(analizarBtn, BorderLayout.CENTER);
        add(new JScrollPane(resultadoArea), BorderLayout.SOUTH);

        codigoArea.setRows(10);
        resultadoArea.setRows(10);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            new AnalizadorGUI().setVisible(true);
        });
    }
}