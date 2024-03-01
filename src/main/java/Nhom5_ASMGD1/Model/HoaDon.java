package Nhom5_ASMGD1.Model;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name = "HoaDon")
public class HoaDon {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@ManyToOne
	@JoinColumn (name = "id_account")
	User user;
	
	Integer soLuongGhe;
	String tenGhe;
	Double thanhTien;
	
	@Temporal (TemporalType.DATE)
	LocalDate ngayTao;
	
	Boolean status;
	
	@OneToMany (mappedBy = "hoaDon")
	List<Ve> listVe;

	
	
}
