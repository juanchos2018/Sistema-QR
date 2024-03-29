/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paneles;

import Entidad.ClsEntEstudiante;
import Negocio.ClsNegEstudiante;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author usuario
 */
public class pnlConsultaFechas extends javax.swing.JPanel {

    /**
     * Creates new form pnlConsultaFechas
     */
    public pnlConsultaFechas() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        rSDateChooser1 = new rojeru_san.componentes.RSDateChooser();
        rSDateChooser2 = new rojeru_san.componentes.RSDateChooser();
        btnConsultar = new rscomponentshade.RSButtonShade();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblFacultad = new javax.swing.JTable();

        rSDateChooser1.setColorBackground(new java.awt.Color(52, 73, 94));
        rSDateChooser1.setFuente(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rSDateChooser1.setPlaceholder("Seleccionar fecha inicial");

        rSDateChooser2.setColorBackground(new java.awt.Color(52, 73, 94));
        rSDateChooser2.setFuente(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        rSDateChooser2.setPlaceholder("Seleccionar fecha final");

        btnConsultar.setBackground(new java.awt.Color(52, 73, 94));
        btnConsultar.setBorder(null);
        btnConsultar.setText("Consultar");
        btnConsultar.setBgHover(new java.awt.Color(41, 128, 185));
        btnConsultar.setBgShade(new java.awt.Color(204, 204, 204));
        btnConsultar.setBgShadeHover(new java.awt.Color(204, 204, 204));
        btnConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConsultarActionPerformed(evt);
            }
        });

        tblFacultad.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(tblFacultad);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 705, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(rSDateChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(37, 37, 37)
                        .addComponent(rSDateChooser2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btnConsultar, javax.swing.GroupLayout.PREFERRED_SIZE, 148, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(0, 80, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnConsultar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rSDateChooser2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(rSDateChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(65, 65, 65)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 298, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(95, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    private void btnConsultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConsultarActionPerformed

        MostarTabla();

    }//GEN-LAST:event_btnConsultarActionPerformed
public void MostarTabla(){
        String titulo[]={"codigo","Nombre"};
        
        ClsNegEstudiante EStudiante=new ClsNegEstudiante();
        if(rSDateChooser1.getDatoFecha() == null || rSDateChooser2.getDatoFecha() == null){
            return;
        }
        
        ArrayList<ClsEntEstudiante> EStu=EStudiante.ListarEstudiantesFechas(sdf.format(rSDateChooser1.getDatoFecha()),sdf.format(rSDateChooser2.getDatoFecha()));
        Iterator iterator=EStu.iterator();
        DefaultTableModel dtm=new DefaultTableModel(null,titulo);
        
        String columna[]=new String[8];
        while (iterator.hasNext()) {
            ClsEntEstudiante EStudi=new ClsEntEstudiante();
            EStudi=(ClsEntEstudiante) iterator.next();
            columna[0]=String.valueOf(EStudi.getCodigo_estu());
            columna[1]=EStudi.getNombre_estu();
       
            dtm.addRow(columna);
        }
        
        tblFacultad.setModel(dtm);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private rscomponentshade.RSButtonShade btnConsultar;
    private javax.swing.JScrollPane jScrollPane1;
    private rojeru_san.componentes.RSDateChooser rSDateChooser1;
    private rojeru_san.componentes.RSDateChooser rSDateChooser2;
    private javax.swing.JTable tblFacultad;
    // End of variables declaration//GEN-END:variables
}
