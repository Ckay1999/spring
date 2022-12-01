package pojo_models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class Images {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int imageId;
	
	@Lob
	private byte[] image;
	
	private String imageName;

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Images() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Images(int imageId, byte[] image, String imageName) {
		super();
		this.imageId = imageId;
		this.image = image;
		this.imageName = imageName;
	}

	
	
	
}
