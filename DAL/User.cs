using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class User
    {
        private String firstName, lastName, lastName2, email, country, username, password;
        int age, passwordAge;
        String code;
        DateTime passwordLastSet;
        bool active;

        public User(string firstName, string lastName, string lastName2, string email, string country, string username, string password, int age, int passwordAge, DateTime passwordLastSet, bool active, String code)
        {
            this.firstName = firstName;
            this.lastName = lastName;
            this.lastName2 = lastName2;
            this.email = email;
            this.country = country;
            this.username = username;
            this.password = password;
            this.age = age;
            this.passwordAge = passwordAge;
            this.passwordLastSet = passwordLastSet;
            this.active = active;
            this.code = code;
        }

        public string FirstName { get => firstName; set => firstName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string LastName2 { get => lastName2; set => lastName2 = value; }
        public string Email { get => email; set => email = value; }
        public string Country { get => country; set => country = value; }
        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public int Age { get => age; set => age = value; }
        public int PasswordAge { get => passwordAge; set => passwordAge = value; }
        public DateTime PasswordLastSet { get => passwordLastSet; set => passwordLastSet = value; }
        public bool Active { get => active; set => active = value; }
        public string Code { get => code; set => code = value; }
    }
}
