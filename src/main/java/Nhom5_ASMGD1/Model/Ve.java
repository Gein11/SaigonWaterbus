package Nhom5_ASMGD1.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Min;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name = "Ve")
public class Ve {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@ManyToOne
	@JoinColumn (name = "id_hoaDon")
	HoaDon hoaDon;
	
	@ManyToOne
	@JoinColumn (name = "id_chuyen")
	Chuyen chuyen;
	
	String tenGhe;
	@Min(0)
	Double giaVe;
	Boolean status;
}
