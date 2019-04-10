using System.Collections.Generic;

namespace SeriesAPI.Common
{
    public class Resources
    {
        #region

        public static string ErrorMsg_InvalidShowId = "Update failed.Incorrect Show Id.";
        public static string ErrorMsg_ShowModelNull = "Show model is null.";
        public static string ErrorMsg_ShowNotFound = "Update failed.Show not found.";
        public static string ErrorMsg_InvalidProductionId = "Production House Id is null.";
        public static string ErrorMsg_InvalidChannelId = "Online Channel Id is null.";
        public static string ErrorMsg_InvalidStatusId = "Watch Status Id is null.";
        public static string ErrorMsg_InvalidLanguageId = "Language Id is null.";
        public static string ErrorMsg_NoGenresFound = "Genres are not provided.";

        #endregion

        #region Info Messages

        public static string InfoMsg_ShowAddSuccess = "Successfully added the show.";
        public static string InfoMsg_ShowDeleteSuccess = "Show deleted successfully.";
        public static string InfoMsg_ShowUpdateSuccess = "Successfully updated the show.";

        #endregion

        #region SQL Queries

        public static string SqlQuery_DeleteShow = "EXEC DeleteShow {0}";
        public static string SqlQuery_GetShows = "GetAllShows";

        #endregion

        #region Dictionary Constants

        public static Dictionary<int, string> Dictionary_Ratings = new Dictionary<int, string>()
        {
            {1, "Voluntary Suffocation" },
            {2, "Time-Pass" },
            {3, "Watchable" },
            {4, "Pretty Good" },
            {5, "Recommended" }
        };        

        #endregion
    }
}
