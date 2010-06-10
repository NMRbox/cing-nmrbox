"""
Unit test execute as:
python $CINGROOT/python/cing/Libs/test/test_pdb.py
"""
from cing import cingDirTestsData
from cing import cingDirTmp
from cing import verbosityDebug
from cing.Scripts.utils import printSequenceFromPdbFile
from cing.core.classes import Project
from cing.core.constants import * #@UnusedWildImport
from unittest import TestCase
import os
import unittest

class AllChecks(TestCase):

    def testPdbFile(self):
        self.failIf( os.chdir(cingDirTmp), msg=
            "Failed to change to directory for temporary test files: "+cingDirTmp)

        entryId = "1brv" # Small much studied PDB NMR entry
#        entryId = "tightTurn_IIb"
#        entryId = "1hy8" # small, single model, very low scoring entry

        pdbDirectory = os.path.join(cingDirTestsData,"pdb", entryId)
        pdbFileName = "pdb"+entryId+".ent"
        pdbFilePath = os.path.join( pdbDirectory, pdbFileName)

        self.failIf( os.chdir(cingDirTmp), msg=
            "Failed to change to directory for temporary test files: "+cingDirTmp)
        # does it matter to import it just now?
        project = Project( entryId )
        self.failIf( project.removeFromDisk())
        project = Project.open( entryId, status='new' )
        project.initPDB( pdbFile=pdbFilePath, convention = IUPAC )

        m = project.molecule
        m.toPDBfile('m001.pdb',model=0, convention='XPLOR')
        m.initCoordinates()
        m.importFromPDB('m001.pdb',convention='XPLOR')

        self.assertFalse(project.mkMacros())
#       self.assertFalse(project.validate(htmlOnly=False, doWhatif = False, doProcheck = False))

    def testPrintSequenceFromPdbFile(self):
        entryId = "1brv" # Small much studied PDB NMR entry
#        entryId = "1hy8" # small, single model, very low scoring entry

        pdbDirectory = os.path.join(cingDirTestsData,"pdb", entryId)
        pdbFileName = "pdb"+entryId+".ent"
        fn = os.path.join( pdbDirectory, pdbFileName)

        self.failIf( os.chdir(cingDirTmp), msg=
            "Failed to change to directory for temporary test files: "+cingDirTmp)
        self.assertFalse(printSequenceFromPdbFile(fn))


if __name__ == "__main__":
    cing.verbosity = verbosityDebug
    unittest.main()
