       identification division.
       program-id. Lab01.
       author.Sarah McCann-Hughes
*      Program Description:
*      Lab 01 Contact List

       environment division.
       configuration section.

       data division.
       working-storage section.

       
       01 ws-space-header                         pic x(50)
        value "                                                  ".
*      -----------------------------------------------------------------
       01 ws-space-contact                        pic x(50)
        value "                                                  ".
*      -----------------------------------------------------------------
       01 ws-course-header.
         05 filler                                pic x(20).
         05 ws-course-code                        pic x(10).
         05 filler                                pic x(05).
         05 ws-course-title                       pic x(12).
         05 filler                                pic x(20).
*      ----------------------------------------------------------------
       01 ws-contact.
         05 ws-firstName                         pic x(8).
         05 ws-lastName                          pic x(10).
         05 ws-email                             pic x(26).
         05 ws-phoneNumber                       pic x(12).
*      ----------------------------------------------------------------
       procedure division.

       000-main.
           move "MAFD 4202"                    to ws-course-code.
           move "Contact List"                 to ws-course-title.
           display ws-space-header.
           display ws-course-header.
           display ws-space-contact.
*      ----------------------------------------------------------------
           move "Sarah"                        to ws-firstName.
           move "McCann"                       to ws-lastName.
           move "sarah.mccann@gmail.com"       to ws-email.
           move "416-672-4100"                 to ws-phoneNumber.
           display ws-contact.

           move "Aaron"                        to ws-firstName.
           move "Chambers"                     to ws-lastName.
           move "aaron.chambers@dcmail.ca"     to ws-email.
           move "647-767-2726"                 to ws-phoneNumber.
           display ws-contact.

           move "Harry"                        to ws-firstName.
           move "Palmer"                       to ws-lastName.
           move "harry.palmer@dcmail.ca"       to ws-email.
           move "647-282-5412"                 to ws-phoneNumber.
           display ws-contact.
*      ----------------------------------------------------------------
           accept return-code
           goback.

       end program Lab01.