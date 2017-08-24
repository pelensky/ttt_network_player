package networkplayer;
import java.util.List;

public class BoardObject {

    private String uuid;
    private Long size;
    private List<Long> board;

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getUuid() {
        return uuid;
    }

    public void setSize(Long size) {
      this.size = size;
    }

    public Long getSize() {
      return size;
    }

    public void setBoard(List<Long> board) {
      this.board = board;
    }

    public List<Long> getBoard() {
      return board;
    }

}
