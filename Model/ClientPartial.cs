using System;
using System.Linq;

namespace Mordochka.Model
{
    public partial class Client
    {
        public string CountVisit
        {
            get
            {
                return AppData.db.ClientService.Where(x => x.ClientID == this.ID).Count().ToString();
                ;
            } 
        }

        public string BirthDay
        {
            get
            {
                var CurrentBD = AppData.db.Client.FirstOrDefault(d => d.ID == this.ID);
                //return CurrentBD.DateOfBirth.ToString("dddd);
                return ((DateTime)CurrentBD.DateOfBirth).ToString("dd.MM.yyyy");
            }
        }
    }
}
