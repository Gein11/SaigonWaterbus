package Nhom5_ASMGD1.Model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name = "Tuyen")
public class Tuyen {
	@Id
	String id;
	@ManyToOne
	@JoinColumn (name = "id_tau")
	Tau tau;
	String tenTuyen;
	String benDi;
	String benDen;
	String benDung;
	Boolean status;
	@OneToMany (mappedBy = "tuyen")
	List<Chuyen> listChuyen;
}
