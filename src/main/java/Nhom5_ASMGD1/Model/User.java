package Nhom5_ASMGD1.Model;


import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="account")
public class User implements UserDetails{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(columnDefinition = "nvarchar(MAX)")
    private String hoTen;

    private String email;
    private String password;
    private boolean status;
    private Boolean authSdt;

    @Column(columnDefinition = "nvarchar(MAX)")
    private String sodt;

    @Column(columnDefinition = "nvarchar(MAX)")
    private String diaChi;

    @Column(columnDefinition = "nvarchar(MAX)")
    private String idFacebook;

    @Enumerated(EnumType.STRING)
    private Role role;
@Override
public Collection<? extends GrantedAuthority> getAuthorities() {
	return List.of(new SimpleGrantedAuthority(role.name()));
}
@Override
public String getUsername() {
	return email;
}
@Override
public boolean isAccountNonExpired() {
	return true;
}
@Override
public boolean isAccountNonLocked() {
	return true;
}
@Override
public boolean isCredentialsNonExpired() {
	return true;
}
@Override
public boolean isEnabled() {
	return true;
}


}
