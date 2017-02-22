      //=====================================================================
      //  Tools/400 STRPREPRC instructions:
      //   >>PRE-COMPILER<<
      //     >>CRTCMD<<  RUCRTTST    TSTPGM(&LI/&OB) +
      //                             SRCFILE(&SL/&SF);
      //     >>COMPILE<<
      //       >>PARM<< COPTION(*SRCSTMT);
      //       >>PARM<< DBGVIEW(*LIST);
      //       >>PARM<< BNDDIR(*N);
      //     >>END-COMPILE<<
      //     >>EXECUTE<<
      //   >>END-PRE-COMPILER<<
      //=====================================================================

      //
      // Unit tests for ASSERT.
      //

     H NoMain Option(*SrcStmt)


      //----------------------------------------------------------------------
      //   Exported Procedures
      //----------------------------------------------------------------------

     D testExampleTestProc...
     D                 pr                  extproc('testExampleTestProc')

     DsetUpSuite       pr                  extproc('setUpSuite')
     DsetUp            pr                  extproc('setUp')


      //----------------------------------------------------------------------
      //   Imported Procedures
      //----------------------------------------------------------------------

      /copy RPGUNITY1,ASSERT
      /copy RPGUNITY1,TEMPLATES
      /copy RPGUNIT1,TESTCASE

      //----------------------------------------------------------------------
      //   Private Procedures
      //----------------------------------------------------------------------


      //----------------------------------------------------------------------
      //   Setup Suite
      //----------------------------------------------------------------------

     P setUpSuite...
     P                 b                   export
     D                 pi

      /free

         // aEqual('a': 'b': 'ERROR: setUpSuite');
         aEqual('s': 's': 'ERROR: setUpSuite');

      /end-free
     P                 e


      //----------------------------------------------------------------------
      //   Setup Test Case
      //----------------------------------------------------------------------

     P setUp...
     P                 b                   export
     D                 pi

      /free

         // aEqual('c': 'd': 'ERROR: setUp');

      /end-free
     P                 e


      //----------------------------------------------------------------------
      //   Test Procedures
      //----------------------------------------------------------------------

     P testCase1...
     P                 b                   export
     D                 pi

      /free

         iEqual(1: 0: 'ERROR: testCase1');

      /end-free
     P                 e

     P testCase2...
     P                 b                   export
     D                 pi

      /free

         // iEqual(2: 0: 'ERROR: testCase2');

      /end-free
     P                 e

     P testCase3...
     P                 b                   export
     D                 pi

      /free

         iEqual(3: 0: 'ERROR: testCase3');

      /end-free
     P                 e

