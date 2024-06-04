/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author Senai
 */
public class ProdutoDAO {

    public List<ProdutoDTO> read() {

        List<ProdutoDTO> produtos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("select * from produto");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO produto = new ProdutoDTO();
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setImage(rs.getString("image"));

                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {

        }

        return produtos;
    }

    public void insert(ProdutoDTO produtos) {

        try (Connection conexao = Conexao.conectar();
                PreparedStatement stmt = conexao.prepareStatement("insert into produto(nome,categoria,descricao,preco,image) value (?,?,?,?,?)")) {

            stmt.setString(1, produtos.getNome());
            stmt.setInt(2, produtos.getCategoria());
            stmt.setString(3, produtos.getDescricao());
            stmt.setFloat(4, produtos.getPreco());
            stmt.setString(5, produtos.getImage());

            stmt.executeUpdate();

            stmt.close();
            conexao.close();
        } catch (SQLException a) {
            a.printStackTrace();
        }

    }

    public void deletar(ProdutoDTO produto) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("delete from produto where idProduto = ?");
            stmt.setInt(1, produto.getIdProduto());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void edit(ProdutoDTO produtosUpd) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPDATE produto SET nome = ?, categoria = ?,descricao = ?, preco = ?,image = ? WHERE idProduto = ?");
            stmt.setString(1, produtosUpd.getNome());
            stmt.setInt(2, produtosUpd.getCategoria());
            stmt.setString(3, produtosUpd.getDescricao());
            stmt.setFloat(4, produtosUpd.getPreco());
            stmt.setString(5, produtosUpd.getImage());
            stmt.setInt(6, produtosUpd.getIdProduto());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
public List<ProdutoDTO> listarProdutos() {
        List<ProdutoDTO> produtos = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM produto");
            rs = stmt.executeQuery();

            while (rs.next()) {
                ProdutoDTO prod = new ProdutoDTO();
                prod.setIdProduto(rs.getInt("idProduto"));
                prod.setNome(rs.getString("nome"));
                prod.setCategoria(rs.getInt("categoria"));
                prod.setDescricao(rs.getString("descricao"));
                prod.setPreco(rs.getFloat("preco"));
                prod.setImage(rs.getString("image"));
                produtos.add(prod);
                
            }           
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }
public ProdutoDTO Produto(int unico) {
        ProdutoDTO produto = new ProdutoDTO();
        
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM produto WHERE idProduto =?");
            stmt.setInt(1, unico);
            
            rs = stmt.executeQuery();

           if (rs.next()) {
                
                produto.setIdProduto(rs.getInt("idProduto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setImage(rs.getString("image"));
                
            }           
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produto;
    }

}
