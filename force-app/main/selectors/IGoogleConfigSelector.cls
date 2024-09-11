/**
 * Created by wenboliu on 10/09/2024.
 */

public interface IGoogleConfigSelector {
    List<Google_Config__mdt> selectByDeveloperName(String developerName, Boolean enforceFLS);

}