using System;

namespace DAL
{
    public class User
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string LastName2 { get; set; }
        public string Email { get; set; }
        public string Country { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public int Age { get; set; }
        public int PasswordAge { get; set; }
        public int UserID { get; set; }
        public DateTime PasswordLastSet { get; set; }
        public bool Active { get; set; }
        public string Code { get; set; }

        public void generateCode(ref User user)
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[10];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            user.Code = finalString;
        }
    }

    
}
