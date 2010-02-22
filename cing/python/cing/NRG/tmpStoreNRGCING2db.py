# Execute like:
# cd /Library/WebServer/Documents/NRG-CING/data/br/1brv; \
# ipython
# %run /Users/jd/workspace35/cing/python/cing/NRG/tmpStoreNRGCING2db.py 1brv .
#
# NB this script fails if the MySql backend is not installed.
from cing import header
from cing import verbosityDebug
from cing.Libs.NTutils import NTdebug
from cing.Libs.NTutils import NTerror
from cing.Libs.NTutils import NTmessage
from cing.PluginCode.required.reqDssp import getDsspSecStructConsensusId #@UnusedImport
from cing.PluginCode.required.reqWattos import * #@UnusedWildImport
from cing.PluginCode.required.reqWhatif import * #@UnusedWildImport
from cing.PluginCode.sqlAlchemy import csqlAlchemy
from cing.core.classes import Project
from cing.main import getStartMessage
import cing
import os #@Reimport
import sys

cing.verbosity = verbosityDebug


"""inputDir may be a directory or a url.
Returns True on error.
"""

NTmessage(header)
NTmessage(getStartMessage())

pdb_id = '1brv'
inputDir = '.'
#    archiveType = extraArgList[1]
#    projectType = extraArgList[2]

NTdebug("Using:")
NTdebug("pdb_id:              " + pdb_id)
NTdebug("inputDir:             " + inputDir)
# presume the directory still needs to be created.
cingEntryDir = pdb_id + ".cing"

NTmessage("Now in %s" % os.path.curdir)

if not os.path.isdir(cingEntryDir):
    NTerror("Failed to find input directory: %s" % cingEntryDir)
    sys.exit(1)
# end if.

# Needs to be copied because the open method doesn't take a directory argument..
project = Project.open(pdb_id, status='old')
if not project:
    NTerror("Failed to init old project")
    sys.exit(1)

# shortcuts
p = project
molecule = project.molecule

p.validate(parseOnly=True, htmlOnly=True)

csql = csqlAlchemy()
if csql.connect():
    NTerror("Failed to connect to DB")
    sys.exit(1)

csql.autoload()

execute = csql.conn.execute
centry = csql.entry
cchain = csql.chain
cresidue = csql.residue
catom = csql.atom
# end def

p.validate(htmlOnly=True, doProcheck = False, doWhatif=False, doWattos=True)

noe_compl4 = molecule.getDeepFirstByKeys(WATTOS_STR, COMPLCHK_STR, VALUE_LIST_STR)