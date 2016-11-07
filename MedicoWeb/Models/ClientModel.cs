using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MedicoWeb.Models
{
    public class ClientModel
    {
        #region Fields

        private int _idClient;
        private string _nom;
        private string _prenom;
        private DateTime _dateNaissance;
        private bool? _sex;
        private string _adresse;
        private string _telephone;
        private string _emailAdresse;
        private string _login;
        private string _password;
        

        #endregion

        #region Properties

        public int IdClient
        {
            get { return _idClient; }
            set { _idClient = value; }
        }

        [Required]
        [Display(Name = "Nom:")]
        public string Nom
        {
            get { return _nom; }
            set { _nom = value; }
        }

        [Required]
        [Display(Name = "Prenom:")]
        public string Prenom
        {
            get { return _prenom; }
            set { _prenom = value; }
        }

        [Required]
        [Display(Name = "DateNaissance:")]
        public DateTime DateNaissance
        {
            get { return _dateNaissance; }
            set { _dateNaissance = value; }
        }

        [Required]
        [Display(Name = "Sex:")]
        public bool? Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }

        [Required]
        [Display(Name = "Adresse:")]
        public string Adresse
        {
            get { return _adresse; }
            set { _adresse = value; }
        }

        [Required]
        [Display(Name = "Telephone:")]
        [DataType(DataType.PhoneNumber)]
        public string Telephone
        {
            get { return _telephone; }
            set { _telephone = value; }
        }

        [Required]
        [Display(Name = "EmailAdresse:")]
        [DataType(DataType.EmailAddress)]
        public string EmailAdresse
        {
            get { return _emailAdresse; }
            set { _emailAdresse = value; }
        }

        [Required]
        [Display(Name = "Login:")]
        public string Login
        {
            get { return _login; }
            set { _login = value; }
        }

        [Required]
        [Display(Name = "Password:")]
        [MinLength(15, ErrorMessage = "Minimum 3 caractères")]
        [MaxLength(15, ErrorMessage = "Maximum 15 caractères")]
        [DataType(DataType.Password)]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }

        #endregion






    }
}