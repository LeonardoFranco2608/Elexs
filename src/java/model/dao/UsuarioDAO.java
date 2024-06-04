
package model.dao;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;

/**
 *
 * @author Senai
 */
public class UsuarioDAO {
     public List<UsuarioDTO> read() {

        List<UsuarioDTO> usuarios = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("select * from usuario");
            rs = stmt.executeQuery();

            while (rs.next()) {
                UsuarioDTO usuario = new UsuarioDTO();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setEmail(rs.getString("email"));
                usuario.setCpf(rs.getString("cpf"));
                
                usuarios.add(usuario);
            }
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {

        }
        
        return usuarios;
    }
     
      public void insert(UsuarioDTO usuarios) {

        try (Connection conexao = Conexao.conectar();
                PreparedStatement stmt = conexao.prepareStatement("insert into usuario(nome, senha, email, cpf) value (?,?,?,?)")) {

            stmt.setString(1, usuarios.getNome());
            stmt.setString(2, usuarios.getSenha());
            stmt.setString(3, usuarios.getEmail());
            stmt.setString(4, usuarios.getCpf());
            
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException a) {
            a.printStackTrace();
        }

    }
      
      public void deletar(UsuarioDTO usuario) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("delete from usuario where idUsuario = ?");
            stmt.setInt(1, usuario.getIdUsuario());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            JOptionPane.showMessageDialog(null, "Usuario Deletado");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
      
        public void edit(UsuarioDTO usuarioUpd){
        try{
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            
            stmt = conexao.prepareStatement("UPDATE usuario SET nome = ?, senha = ?, email = ?, cpf = ? WHERE idUsuario = ?");
            stmt.setString(1, usuarioUpd.getNome());
            stmt.setString(2, usuarioUpd.getSenha());
            stmt.setString(3, usuarioUpd.getEmail());
 
            stmt.setInt(6, usuarioUpd.getIdUsuario());
            
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            JOptionPane.showMessageDialog(null, "Usuario Atualizado!");
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
       public boolean login(UsuarioDTO user) {
        boolean result = false;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE email = ? AND senha = ?");
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getSenha());
            rs = stmt.executeQuery();

            if (rs.next()) {
                result = true;
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
       return result;
    }
       
       public UsuarioDTO buscarLogin(UsuarioDTO user) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT idUsuario, status FROM usuario WHERE email= ? AND senha = ?");
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getSenha());
            
            rs = stmt.executeQuery();
            if(rs.next()){
                user.setIdUsuario(rs.getInt("idUsuario"));
                user.setStatus(rs.getInt("status"));
            }
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return user;
    }
    
       
       public int logar(String email, String senha) {
           int retorno = 0;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT idUsuario, status FROM usuario WHERE email= ? AND senha = ?");
            stmt.setString(1, email);
            stmt.setString(2, senha);
            
            rs = stmt.executeQuery();
            if(rs.next()){
                retorno = rs.getInt("status");
            }
            rs.close();
            stmt.close();
            conexao.close();
          
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return retorno;
    }      
}
