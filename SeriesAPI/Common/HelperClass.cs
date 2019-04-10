using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SeriesAPI.Common
{
    public class HelperClass
    {
        private static readonly DateTime _epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

        public static double ConvertDateTimeToEpoch(DateTime dateTime)
        {
            return (double) (dateTime - _epoch).TotalMilliseconds;
        }

        public static DateTime ConvertEpochToDateTime(double timeEpoch)
        {
            return _epoch.AddMilliseconds(timeEpoch);
        }

        public static string GetRatingValues(int rating)
        {
            return Resources.Dictionary_Ratings.GetValueOrDefault(rating);
        }

        public static int GetRatings(string ratingValue)
        {
            return Resources.Dictionary_Ratings.FirstOrDefault(r => r.Value.Equals(ratingValue)).Key;
        }
    }
}
