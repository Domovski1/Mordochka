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
    }
}
