using System.Collections;

namespace DAL.DB
{
    public class SqlLine
    {
        private string request;
        private ArrayList parList;

        public SqlLine()
        {
            Request = string.Empty;
            ParList = new ArrayList();
        }

        public string Request { get => request; set => request = value; }
        public ArrayList ParList { get => parList; set => parList = value; }
    }
}
