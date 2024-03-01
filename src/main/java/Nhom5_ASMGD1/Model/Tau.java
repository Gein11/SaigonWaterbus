package Nhom5_ASMGD1.Model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name = "Tau")
public class Tau {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	String bienSoTau;
	Integer soLuongGhe;
	Boolean status;
	@OneToMany (mappedBy = "tau")
	List<Tuyen> listTuyen;
}
