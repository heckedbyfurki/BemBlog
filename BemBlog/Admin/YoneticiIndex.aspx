﻿ap<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="YoneticiIndex.aspx.cs" Inherits="BemBlog.Admin.YoneticiIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ListView runat="server" ID="lv_yoneticiler" OnItemCommand="lv_yoneticiler_ItemCommand">
        <LayoutTemplate>
            <table class="table" cellspacing="0">
                <tr>
                    <th>Yetki Adı</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Kullanıcı Adı</th>
                    <th>E-Posta</th>
                    <th>
                        <img src="../Images/settings.png" width="20" />
                    </th>
                </tr>
                <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("YetkiAdi") %></td>
                <td><%#Eval("Adi") %></td>
                <td><%#Eval("Soyadi") %></td>
                <td><%#Eval("KullaniciAdi") %></td>
                <td><%#Eval("Eposta") %></td>
                <td>
                    <asp:LinkButton ID="lbtn_deletecomment" runat="server" CssClass="silButton" CommandArgument='<%# Eval("ID") %>' CommandName="sil">Sil</asp:LinkButton>&nbsp;|&nbsp;
                    <a href='YoneticiGuncelle.aspx?yonid=<%# Eval("ID") %>' class="guncButton">Güncelle</a>
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color:#F7B5A1">
                <td><%#Eval("YetkiAdi") %></td>
                <td><%#Eval("Adi") %></td>
                <td><%#Eval("Soyadi") %></td>
                <td><%#Eval("KullaniciAdi") %></td>
                <td><%#Eval("Eposta") %></td>
                <td>
                    <asp:LinkButton ID="lbtn_deletecomment" runat="server" CssClass="silButton" CommandArgument='<%# Eval("ID") %>' CommandName="sil">Sil</asp:LinkButton>&nbsp;|&nbsp;
                    <a href='YoneticiGuncelle.aspx?yonid=<%# Eval("ID") %>' class="guncButton">Güncelle</a>
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table class="table" cellspacing="0">
                <tr>
                    <th>Yetki Adı</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Kullanıcı Adı</th>
                    <th>E-Posta</th>
                    <th>
                        <img src="../Images/settings.png" width="20" />
                    </th>
                </tr>
                <tr>
                    <td colspan="6">Henüz Yönetici Eklenmedi.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
    </asp:ListView>
</asp:Content>
